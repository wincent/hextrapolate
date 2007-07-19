#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:43 +0200 2007 by Walrus version 0.1

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

    class Quitting < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: quitting.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: quitting.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Quitting Hextrapolate' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'quitting' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'force_quitting', 'force quitting Hextrapolate'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('You can quit Hextrapolate using any of the standard methods for quitting applications on Mac OS X:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('* When Hextrapolate is the frontmost, active application:' + "\n") # RawText (continued)
        accumulate('** Use the mouse to select "Quit Hextrapolate" from the "Hextrapolate" menu.' + "\n") # RawText (continued)
        accumulate('** Hold the Command key and press the "Q" key.' + "\n") # RawText (continued)
        accumulate('* Click-and-hold on the Hextrapolate Dock icon and choose "Quit" from the menu which appears.' + "\n") # RawText (continued)
        accumulate('* Hold down the Command key and cycle through the list of running applications by pressing the Tab key until Hextrapolate is selected; then, without releasing the command key tap the "Q" key.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If Hextrapolate stops responding you may need to Force Quit it.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # Quitting

  end # WalrusGrammar

end # Walrus

