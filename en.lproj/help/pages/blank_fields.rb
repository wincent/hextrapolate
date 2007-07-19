#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:30 +0200 2007 by Walrus version 0.1

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

    class BlankFields < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: blank_fields.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: blank_fields.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Why are the text fields blank?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'blank_fields' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'ascii', 'ASCII text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'text_encodings'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'let_me_type', "Why doesn't Hextrapolate let me type the characters I want?"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'troubleshooting')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate provides two adjustable fields for showing a number in a text encoding (ASCII, UTF-8 or UTF-16).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you enter a number which does not have a valid representation in the specified text encoding then the corresponding field will appear as blank.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('This can occur quite often in the case of ASCII because the ASCII text encoding only contains 95 printable characters. It can also happen in the case of UTF-8; even though UTF-8 is capable of encoding thousands of different characters it requires the bytes to be in a very specific order, so it is quite easy to enter numbers which do not respond to valid UTF-8 text.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('UTF-16 spans a much wider range of possible values and so is less likely to show as a blank field.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # BlankFields

  end # WalrusGrammar

end # Walrus

