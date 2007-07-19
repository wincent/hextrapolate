#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:30 +0200 2007 by Walrus version 0.1

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

    class WhatHappensIfWincentStopsTrading < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: what_happens_if_wincent_stops_trading.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: what_happens_if_wincent_stops_trading.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'What happens if Wincent stops trading?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'what_happens_if_wincent_stops_trading' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'activation_topics', 'Activation topics'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'activation_topics')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('When discussing product activation people sometimes ask:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('bq. What happens if Wincent stops trading at some point in the future and the activation server goes off-line forever? How can people continue to enjoy the software they\'ve licensed if they can\'t activate it?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('I have no plans to discontinue trading but recognize that this is a frequently voiced concern about product activation, so I make the following undertaking:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('In the event that Wincent should stop trading it will do one of the following at its discretion:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` Make available for free download updated versions of all products with the product activation requirements removed. These versions would be freely redistributable.' + "\n") # RawText (continued)
        accumulate('` Make available special license codes which turn off the product activation requirement. These codes would be freely redistributable.' + "\n") # RawText (continued)
        accumulate('` Release the source code for the protected applications under an open source license such as the GPL or the BSD license.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # WhatHappensIfWincentStopsTrading

  end # WalrusGrammar

end # Walrus

