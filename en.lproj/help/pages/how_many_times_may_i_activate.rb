#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:07 +0200 2007 by Walrus version 0.1

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

    class HowManyTimesMayIActivate < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: how_many_times_may_i_activate.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: how_many_times_may_i_activate.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'How many times may I activate?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'how_many_times_may_i_activate' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'registering', 'Registering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'transferring_license', 'Transferring your license to another machine'))
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
        accumulate('A single-user license permits you to install and run Hextrapolate on a single machine, but the activation limit is set to five activations, not one, to allow for scenarios such as switching to a new machine, replacing your hard drive, or performing a full system re-install. This is because the spirit of the activation system is to target mass piracy, not penalize honest paying customers.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('An automatic system is in place that performs a yearly revision of each license and that grants users additional activations per license, per user, per year; this should fit in nicely with the typical pattern in which users upgrade to new machines once every year or two. The additional activations are applied to any license that is in good standing (activation limit not exceeded) and which has been activated at some point in the previous 12 months.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you exceed the activation limit, contact me via email to <a href="mailto:support@wincent.com">support@wincent.com</a> to have your limit reset.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # HowManyTimesMayIActivate

  end # WalrusGrammar

end # Walrus

