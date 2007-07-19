#!/usr/bin/env ruby
# Generated Wed Apr 25 19:47:53 +0200 2007 by Walrus version 0.1

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

    class GarbageInTextFields < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: garbage_in_text_fields.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: garbage_in_text_fields.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Why are there garbage characters in the text fields?' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'garbage_in_text_fields' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'ascii', 'ASCII text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'text_encodings'))
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
        accumulate('Hextrapolate provides two adjustable fields for showing a number in a text encoding of your choice (ASCII, UTF-8 or UTF-16). It is normal for garbage characters to appear in these text fields, depending on the number under conversion.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('For example, you might enter a number that corresponds to valid UTF-8 or UTF-16 but your system does not have a font installed that contains the corresponding glyphs. In these cases the system may substitute a meaningless character such as a square or a box.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('It is also possible that the textual representation is valid and the corresponding glyphs are available but they are from a foreign alphabet.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The screenshot below demonstrates both of these possibilities.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/garbage_characters.png" width="338" height="270" alt="Garbage characters"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # GarbageInTextFields

  end # WalrusGrammar

end # Walrus

