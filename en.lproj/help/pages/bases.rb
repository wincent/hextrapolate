#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:22 +0200 2007 by Walrus version 0.1

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

    class Bases < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: bases.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: bases.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Bases' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'bases' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'binary_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'octal_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'decimal_representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'hexadecimal_representation'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate provides fields for entering numbers in binary (base 2), octal (base 8), decimal (base 10) and hexadecimal (base 16).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('In addition, it provides two adjustable fields for selecting any base from base 2 through to base 36.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/base-popup.png" width="182" height="189" alt="Base menu"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Beyond base 10, each subsequent base is created by adding one more letter from the roman alphabet to the set of allowed digits. To illustrate:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* At base 16, digits <tt>0</tt> through <tt>9</tt> and letters <tt>a</tt> through <tt>f</tt> are allowed.' + "\n") # RawText (continued)
        accumulate('* Base 17 adds <tt>g</tt> to the set of allowed digits.' + "\n") # RawText (continued)
        accumulate('* By the time we reach base 36, digits <tt>0</tt> through <tt>9</tt> and letters <tt>a</tt> through <tt>z</tt> are allowed.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If we were to introduce a distinction between lower and uppercase letters we could go even further, as far as base 62, but for the time being Hextrapolate stops at base 36.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Keyboard navigation and tool-tips' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('As shown in the screenshot above, keyboard shortcuts are provided for quickly switching between bases. Tool-tips are shown to indicate the alternative names for some of the common bases.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # Bases

  end # WalrusGrammar

end # Walrus

