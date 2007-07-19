#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:34 +0200 2007 by Walrus version 0.1

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

    class WhatsNew < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 21 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: whats_new.rb 90 2007-04-25 17:51:42Z wincent $
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        # Comment:#############################################################################
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)

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
                # Comment: $Id: whats_new.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { "What's new in Hextrapolate?" }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'whats_new' }) # Set directive 
        accumulate('  ') # RawText
        # Comment:#set $abstract    = "if different from page title"
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        # Comment:$see_also($link_to('base2', 'other text'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        # Comment:$see_also($link_to_category('base2', 'other text'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate version 2.0 is a complete ground-up rewrite of the previous version (formerly known as WinHex) and delivers many new features, bug fixes and enhancements. The new conversion engine is faster, more resource efficient and more powerful.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Selectable text encodings<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/encoding-popup.png" width="174" height="132" alt="Encoding pop-up">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('You can now convert numbers to and from more text encodings: ASCII, UTF-8, and two variants of UTF-16 (little and big endian). Not only that, but the conversion engine has been rewritten to better handle cases where the number being converted is not valid for the selected encoding.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'text_encodings')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. More choices<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/more-choices.png" width="129" height="110" alt="More choices">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('More fields have been added to the interface to provide more flexible conversions. This means that you can now convert to and from any of the supported text encodings and bases without having to repeatedly switch your selected encoding or base. Exotic conversion which were previously a two step process (for example Base 12 to Base 19) can now be done in a single step.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'bases')
        accumulate('' + "\n") # RawText
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'text_encodings')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Better feedback<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/better-feedback.png" width="164" height="57" alt="Better feedback">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The Hextrapolate main window now shows more information in the title bar, allowing you to see at a glance the size of the number currently being converted (in bits and bytes). Numbers can be arbitrarily large in size, extending to thousands of bits and beyond.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Comprehensive tool-tips<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/tool-tips.png" width="171" height="105" alt="Tool-tips">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('More tool tips have been added to the interface to provide better feedback in realtime if you try to type a character which is not allowed in a particular base or text encoding.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'let_me_type', 'Getting feedback on errors')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('h2. Integrated help<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/integrated-help.png" width="171" height="105" alt="Integrated help">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Extensive help documentation prepared in the familiar format used by Apple applications is now embedded within the Hextrapolate application itself. An online mirror of the documentation can be found <a href="http://wincent.com/a/products/hextrapolate/help/">here</a>.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # WhatsNew

  end # WalrusGrammar

end # Walrus

