#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:27 +0200 2007 by Walrus version 0.1

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

    class WhatHappensIfTheNetworkIsDown < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: what_happens_if_the_network_is_down.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: what_happens_if_the_network_is_down.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'What happens if the network is down when I try to activate?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'what_happens_if_the_network_is_down' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'activation_topics', 'Activation topics'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'activation_topics')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate will still run without activation so if you have a temporary network failure you can try again later (Hextrapolate will remind you to do so the next time you run it). Once the software has been activated it does not need to connect to the Internet again so there is no dependency on a network connection.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The wincent.com activation server runs an industry-standard UNIX-like operating system (Red Hat Enterprise Linux) and is hosted by Rackspace, regarded by many as the most reliable hosting provider in the world. Their data centers have uninterruptable backup power generators and multiple, redundant, high-bandwidth connections to the Internet. Rackspace guarantees a "Zero-Downtime Network". In the unlikely event that you cannot connect to the activation servers during maintenance or due to a transitory network fault between your machine and the servers you will find that you can continue to use the software and perform the activation later.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # WhatHappensIfTheNetworkIsDown

  end # WalrusGrammar

end # Walrus

