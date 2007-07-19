#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:04 +0200 2007 by Walrus version 0.1

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

    class HowDoesActivationWork < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: how_does_activation_work.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: how_does_activation_work.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'How does product activation work?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'how_does_activation_work' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'registering', 'Registering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'activation_topics', 'Activation topics'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'activation_topics')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Product activation takes place when you enter your license code and click the "Verify" button (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'registering', 'Registering Hextrapolate')
        accumulate(').' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. What happens when I click the "Verify" button?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('When you install Hextrapolate for the first time it generates a random number that is unique to the machine on which the software is being installed. The number is what is known as a one-way cryptographic hash; it\'s so called because the calculation only works in one direction: it is easy to generate the number based on the machine, but it is impossible to look at the number and know which machine it came from.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('A hash is also made from your license code. The one-way nature of the hash means that if somebody were to see it he or she would have no way of figuring out what your license code was; nevertheless, the hash is a unique number and no two licenses will produce the same hash. For more information about how these cryptographic hashes guarantee your privacy see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'activation_privacy')
        accumulate('.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('These two pieces &mdash; let\'s call them the "machine hash" and the "license hash" &mdash; are sent to the Wincent server at activation time. If the server sees many activation requests coming in with the same license hash but lots of different machine hashes, then it knows that the software is being activated on many different machines with the same license code. Note that because one-way hashes are used in the process nobody can personally identify machines or customers; the numbers are just random ID numbers that cannot be traced back to a particular individual or computer.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The activation server permits a reasonable number of activations for any given license code. For example, you may buy a new machine and wish to install the software on the new machine in which case you\'ll perform the product activation on the new machine. (If you need to to perform additional activations above the limit then you can open a support ticket.) Similarly, some may buy multi-user licenses and need to activate on a large number of machines; in this case also the activation server knows that it should allow a higher number of activations. See "How many activations may I perform?" below for more information.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('When the server approves an activation it sends a reply to the connecting program containing a certificate of activation. The program stores the activation certificate along with the program preferences. From that point onwards the program will know that it\'s been activated and you won\'t have to perform the activation again (although if you ever format your hard disk, modify your machine sufficiently for it to appear like a "new machine" or otherwise delete the activation certificate you\'ll need to reactivate).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # HowDoesActivationWork

  end # WalrusGrammar

end # Walrus

