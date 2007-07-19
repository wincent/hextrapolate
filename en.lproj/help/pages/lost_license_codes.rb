#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:30 +0200 2007 by Walrus version 0.1

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../../WOCommon/help', 'task').to_s

module Walrus

  class WalrusGrammar

    class LostLicenseCodes < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: lost_license_codes.rb 90 2007-04-25 17:51:42Z wincent $
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
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
                # Comment: $Id: lost_license_codes.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'What to do if you lose your license code' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'lost_license_codes' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'missing_license', "What to do if you haven't received your license"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'purchasing', 'Purchasing Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'backing_up_your_license'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('If you lose your license code you can have it resent to you by an automated system.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('It is recommended that you keep backups of your license notices.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` From the Hextrapolate menu select Register…' + "\n") # RawText (continued)
        accumulate('` When the registration preference pane appears, click the "Retrieve lost license code" button' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Screenshots' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/registration-pane.png" width="464" height="389" alt="Registration preferences pane"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Alternatives' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you unable to obtain your license using this method, contact me via email at <a href="mailto:support@wincent.com">support@wincent.com</a>.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # LostLicenseCodes

  end # WalrusGrammar

end # Walrus

