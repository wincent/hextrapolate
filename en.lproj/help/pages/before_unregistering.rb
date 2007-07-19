#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:25 +0200 2007 by Walrus version 0.1

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

    class BeforeUnregistering < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 23 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: before_unregistering.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: before_unregistering.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Before unregistering' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'before_unregistering' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'unregister', 'Unregistering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'transferring_license', 'Transferring your license to another machine'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'activation', 'Activation'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('h2. Why unregister Hextrapolate?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('You should unregister any installed copies of Hextrapolate before selling or otherwise disposing of your computer.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you wish to transfer your copy of Hextrapolate from one computer to another then you ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'unregister')
        accumulate(' it on one machine before ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'registering')
        accumulate(' on the other.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Things to consider' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Before you unregister your copy of Hextrapolate, remember that you will have to go through the activation process if you later decide to register again. Each license includes a reasonable number of activations, to allow for normal usage patterns (system upgrades, machine purchases, hardware failures and so on), but you should avoid needlessly unregistering and re-activating because if you hit your activation limit then you will have to request for it to be reset.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # BeforeUnregistering

  end # WalrusGrammar

end # Walrus

