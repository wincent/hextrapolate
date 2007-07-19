#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:15 +0200 2007 by Walrus version 0.1

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

    class Ascii < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: ascii.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: ascii.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'ASCII text encoding' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'ascii' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'text_encodings'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('ASCII is a 7-bit text encoding. ASCII stands for American Standard Code for Information Interchange.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('To be valid ASCII, each character\'s value must fall within the range of 0 to 127; this limit is imposed because only 7 bits are used to encode each character. One byte (8 bits) is used to store each character but only the 7 least significant bits may be used: any character with the 8th bit set is not valid ASCII.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Of the 128 possible characters, 95 are printable (that is, they are visible on the screen with the exception of the space character which appears as a blank space). The printable characters include all lower and uppercase letters of the Roman alphabet, the digits 0 through 9, and various punctuation marks such as <tt>!</tt>, <tt>?</tt> and <tt>/</tt>.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The other 33 characters are non-printable control characters such as tab, backspace and delete.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # Ascii

  end # WalrusGrammar

end # Walrus

