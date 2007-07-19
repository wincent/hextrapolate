#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:04 +0200 2007 by Walrus version 0.1

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

    class TextEncodings < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: text_encodings.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: text_encodings.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Text encodings' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'text_encodings' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'ascii', 'ASCII text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'utf8', 'UTF-8 text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'utf16', 'UTF-16 text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'let_me_type', "Why doesn't Hextrapolate let me type the characters I want?"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'blank_fields', 'Why are the text fields blank?'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'garbage_in_text_fields', 'Why are there garbage characters in the text fields?'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate provides adjustable fields for entering and displaying text in ASCII, UTF-8, or UTF-16 text encodings. A text encoding is a mapping between data (codes) and the characters represented by those codes. For example, in ASCII the lowercase letter <tt>x</tt> is encoded as 120 (decimal).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/encoding-popup.png" width="174" height="132" alt="Encoding menu"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Note that not all numbers correspond to valid strings in a given text encoding, and even if a string is valid it may contain characters for which no glyph exists in the installed fonts.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Tool-tips' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('As shown in the screenshot above, tool-tips are shown as a reminder for the abbreviations, LE (little-endian) and BE (big-endian). See ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'utf16', 'UTF-16 text encoding')
        accumulate(' for more information about endianness.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # TextEncodings

  end # WalrusGrammar

end # Walrus

