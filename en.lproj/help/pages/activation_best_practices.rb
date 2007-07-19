#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:08 +0200 2007 by Walrus version 0.1

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

    class ActivationBestPractices < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: activation_best_practices.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: activation_best_practices.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Activation best practices' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'activation_best_practices' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'activation_topics', 'Activation topics'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'getting_support', 'Requesting support'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'activation_topics')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('The Hextrapolate activation system fulfills or exceeds the best practice guidelines for product activation published by the Business Software Alliance:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Respect for Privacy' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Activation should not collect or transmit personally identifiable information without the users\' explicit knowledge and should comply with applicable data protection laws.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'activation_privacy')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Ease of Use' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Activation methods should not be burdensome to the user. Ideally, they should be limited to a one-time step or process per machine.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'registering', 'Registering Hextrapolate')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Full Disclosure' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Publishers should clearly explain the activation process, including the activation data and how it is transmitted, so that users understand how activation works and are assured that their privacy will be respected.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'how_does_activation_work', 'How does activation work?')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Support' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Documentation and access to high quality support should be made available to assist users with activating their product and to answer their questions.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'getting_support', 'Requesting support')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Security' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The activation solution should use appropriate security to protect stored and transmitted activation data.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Speed' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The activation process should be completed as quickly as possible.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. User Control' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Activation should empower users to easily move their software program to a new or upgraded computer in a manner authorized by the license agreement.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'transferring_license', 'Transferring your license from one machine to another')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # ActivationBestPractices

  end # WalrusGrammar

end # Walrus

