task :default => :help

# absolute path to Info.plist file ("defaults" fails for relative paths)
info_plist = File.expand_path 'Info', File.dirname(__FILE__)

# eg. "Hextrapolate Help" or similar
help_book_folder = `defaults read #{info_plist} CFBundleHelpBookFolder`.chomp
raise "defaults(1) returned non-zero exit status (#{$?.exitstatus})" if $?.exitstatus != 0

# to keep the dependency resolution simple, will re-compile
# everything whenever anything in buildtools changes
buildtools_files = Dir['buildtools/help/**/*.rb']

def tidy html
    # tidy exits with 0 for success, 1 for warnings, 2 for errors
    sh "tidy -utf8 -wrap 0 --fix-uri no --tidy-mark no -quiet " +
       "-o \"#{html}\" \"#{html}\" || test $? == '1'"
end

app_help_templates = Dir['en.lproj/help/**/*.tmpl']
app_help_templates.each do |template|
  compiled_template = template.ext 'rb'
  dependencies = buildtools_files +
    ['en.lproj/help/settings.txt', template]
  file compiled_template => dependencies do
    cd template.pathmap('%d') do
      sh "walrus compile --no-backup #{template.pathmap('%f')}"
    end
  end
end
app_help_html = app_help_templates.map do |template|
  html_file = template.ext('html').split('/')
  html_file[1] = help_book_folder
  html_file = html_file.join('/')
  output_dir = File.expand_path "en.lproj/#{help_book_folder}",
    File.dirname(__FILE__)
  file html_file => template.ext('rb') do
    template = template.split('/')[2..-1] # drop "en.lproj/help"
    template = template.join('/')
    cd 'en.lproj/help' do
      sh "walrus fill --no-backup -o \"#{output_dir}\" #{template}"
    end
    tidy html_file
  end
  html_file
end

web_help_templates = app_help_templates.reject do |path|
  path =~ %r{/autogen/}
end
web_help_html = web_help_templates.map do |template|
  html_file = template.ext('html').split('/')
  html_file[1] = 'web_help'
  html_file = html_file.join('/')
  output_dir = File.expand_path 'en.lproj/web_help',
    File.dirname(__FILE__)
  file html_file => template.ext('rb') do
    template = template.split('/')[2..-1] # drop "en.lproj/help"
    template = template.join('/')
    cd 'en.lproj/help' do
      sh "env WALRUS_STYLE=web " +
         "walrus fill --no-backup -o #{output_dir} #{template}"
    end
    tidy html_file
  end
  html_file
end

index_file = File.expand_path "en.lproj/#{help_book_folder}/#{help_book_folder}.helpindex", File.dirname(__FILE__)
index_target = File.expand_path "en.lproj/#{help_book_folder}", File.dirname(__FILE__)

file index_file => app_help_html do
  sh "hiutil -C --min-term-length=3 --anchors --generate-summaries " +
     "--file \"#{index_file}\" \"#{index_target}\""
  sh "hiutil -A --file \"#{index_file}\""
end

desc 'Update all help files'
task :help => ['help:web', 'help:app']

namespace :help do
  desc 'Update web-based help files'
  task :web => web_help_html

  desc 'Update embedded help files'
  task :app => app_help_html + [index_file]

  # TODO: handle index_grep.rb invocation

  desc 'Update buildtools help files'
  task :buildtools do
    cd 'buildtools/help' do
      sh 'rake'
    end
  end
end
