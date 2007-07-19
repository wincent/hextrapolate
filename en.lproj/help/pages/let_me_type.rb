#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:25 +0200 2007 by Walrus version 0.1

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

    class LetMeType < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: let_me_type.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: let_me_type.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { "Why doesn't Hextrapolate let me type the characters I want?" }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'let_me_type' }) # Set directive 
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
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'ascii', 'ASCII text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'text_encodings'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'bases'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'troubleshooting'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'troubleshooting')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate only allows you to type numbers and letters that are valid for a particular base or text encoding. The allowed characters for some of the common bases and text encodings are shown below:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* _Hexadecimal_: the digits 0 through 9, as well as the letters a through f' + "\n") # RawText (continued)
        accumulate('* _Decimal_: the digits 0 through 9' + "\n") # RawText (continued)
        accumulate('* _Octal_: the digits 0 through 7' + "\n") # RawText (continued)
        accumulate('* _Binary_: the digits 0 and 1' + "\n") # RawText (continued)
        accumulate('* _ASCII_: the 95 printable characters of the ASCII character encoding; these include all the 26 lowercase and uppercase letters of the Roman alphabet, the digits 0 through 9, and a number of punctuation and other characters (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'ascii', 'ASCII text encoding')
        accumulate(' for a full listing)' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('If a character you type is rejected Hextrapolate will show information about it in a tool-tip (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'digit_error', 'digit error (screenshot)')
        accumulate(' and ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'encoding_error', 'text encoding error (screenshot)')
        accumulate(').' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # LetMeType

  end # WalrusGrammar

end # Walrus

