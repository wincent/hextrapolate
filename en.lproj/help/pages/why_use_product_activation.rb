#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:38 +0200 2007 by Walrus version 0.1

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

    class WhyUseProductActivation < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: why_use_product_activation.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: why_use_product_activation.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Why use product activation?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'why_use_product_activation' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'activation_topics', 'Activation topics'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'activation_topics')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('h2. Why' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('One of the great things about the Internet is that it makes it very easy to distribute software to a large number of people. Unfortunately it\'s also very easy to distribute license codes and cracks. A single leak can quickly lead to thousands of pirated copies. Product activation minimizes the damage caused by such leaks. If the same license code is used to activate a product hundreds or thousands of times, then it\'s clear that a leak has occurred and further activations can be stopped before the damage spreads too far.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. How' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Every aspect of the product activation system is carefully designed to reducing the damage done by software piracy without inconveniencing honest users. Whereas in older products users entered their license codes and clicked an "OK" button, they now click a "Verify" button. The only difference is that their license is now verified with the wincent.com server and after few seconds or less the product is permanently activated. No personal information is transmitted to the Wincent server in the process so your privacy is protected (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'activation_privacy')
        accumulate(').' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('Product activation doesn\'t interfere with normal use (moving your license to another machine, reinstalling your system or changing your hardware) because each license is allowed a reasonable number of activations.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Who' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Product activation is employed by some of the largest software companies in the world such as Microsoft, Macromedia, Adobe, Network Associates and Symantec and the list is constantly growing. In the not-too-distant future product activation is likely to be included in the majority of commercial software. (You can read more general information about product activation and the companies that use it on <a href="http://www.bsa.org/usa/antipiracy/Product-Activation.cfm">this page</a> at the <a href="http://bsa.org/">Business Software Alliance</a> website.)' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # WhyUseProductActivation

  end # WalrusGrammar

end # Walrus

