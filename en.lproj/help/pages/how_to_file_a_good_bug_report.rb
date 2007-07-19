#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:14 +0200 2007 by Walrus version 0.1

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../../WOCommon/help', 'basic').to_s

module Walrus

  class WalrusGrammar

    class HowToFileAGoodBugReport < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: how_to_file_a_good_bug_report.rb 90 2007-04-25 17:51:42Z wincent $
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        # Comment:#############################################################################
        accumulate('' + "\n") # RawText

      end

      def setup
        accumulate('  ') # RawText
        # Include (start): ../settings.txt:
                # Comment: settings.tmpl
                # Comment: A template for application-wide default settings
                # Comment: WOCommon help templates
                # Comment:
                # Comment: Created by Wincent Colaiuta on 11 October 2006.
                # Comment: Copyright 2006-2007 Wincent Colaiuta
                # Comment: $Id: how_to_file_a_good_bug_report.rb 90 2007-04-25 17:51:42Z wincent $
                accumulate('' + "\n") # RawText
                # Comment:
                # Comment: appliction-wide default settings go in here
                # Comment:
                accumulate('' + "\n") # RawText
                set_value("book_id", instance_eval { 'Hextrapolate Help' }) # Set directive 
                set_value("book_icon", instance_eval { 'Hextrapolate Help/gfx/icon16.png' }) # Set directive 
                accumulate('' + "\n") # RawText
                # Comment:
                # Comment: the page_title should be overridden on a per-page basis
                # Comment:
                accumulate('' + "\n") # RawText
                set_value("page_title", instance_eval { 'Help' }) # Set directive 
        accumulate('  ') # RawText
        set_value("page_title", instance_eval { 'How to file a good bug report' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'how_to_file_a_good_bug_report' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'troubleshooting_tips'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'reporting_bugs'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'troubleshooting'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'troubleshooting')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Submitting good bug reports is the best way to get flaws in Hextrapolate fixed as quickly as possible. There are a number of steps you can take to ensure that your bug reports are of high quality:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('h2. Perform basic troubleshooting first' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('It\'s important to eliminate possible causes outside of the software. You may find that the problem is being caused by something external to the program, such as a corrupt preferences file, and once you correct the external cause the problem goes away.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('See "') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'troubleshooting_tips')
        accumulate('" for information on basic troubleshooting.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Search before reporting' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Perform a search of the database at <a href="http://bugs.wincent.com/">bugs.wincent.com</a> prior to submitting a report; you can save yourself the effort of filing a report if someone else has already reported the issue.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Find out how to reproduce the bug' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Reproducibility is *the* most important attribute a bug report can have. This means figuring out how to "reproduce" the problem; that is, working out a list of steps required to trigger or cause the bug. Without these instructions I may not be able to fix the bug.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Describe your system' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Include basic information about your system such as:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* the version of Mac OS X that you are running' + "\n") # RawText (continued)
        accumulate('* the version of Hextrapolate in which you\'ve found a bug' + "\n") # RawText (continued)
        accumulate('* whether your machine is Intel or PowerPC-based' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('One way of providing all this information and more is by ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'obtaining_a_system_profiler_report', 'including a system profiler report')
        accumulate('.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Collect information from the Console' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Use the Console application (located in the <tt>Utilities</tt> folder inside the <tt>Applications</tt> folder) to see if anything related to the issue is printed to the <tt>system.log</tt> or <tt>console.log</tt> files. Look for lines which include the word "Hextrapolate", especially lines which contain error messages or warnings.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Save any relevant lines and include them in your report.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Collect information from the Activity Monitor' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If Hextrapolate stops responding for long periods of time you can use the Activity monitor (located in the <tt>Utilities</tt> folder inside the <tt>Applications</tt> folder) to gather information about where it might be stuck.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Select Hextrapolate from the list of running processes and choose "Sample Process" from the "View" menu, then include the resulting sample in your report.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. One issue per bug report' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Keep your bug report focussed on a single issue. This will make it easier for others to find your bug report in the database and contribute data to help track down the issue.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('To actually report a bug, see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'reporting_bugs')
        accumulate('.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # HowToFileAGoodBugReport

  end # WalrusGrammar

end # Walrus

