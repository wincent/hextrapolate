#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:20 +0200 2007 by Walrus version 0.1

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

    class LearnAbout < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 21 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: learn_about.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: learn_about.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Learn about Hextrapolate' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'learn_about' }) # Set directive 
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
        accumulate('Hextrapolate is a conversion tool that converts numbers in any base &mdash; from base 2 (binary) right through to base 36 &mdash; into any other base. It can also convert to and from string representations of numbers using different, user-selectable text encodings (ASCII, UTF-8 and UTF-16).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Humans are most accustomed to thinking and working in base 10 (decimal) but computers regularly employ other formats, especially base 2 (binary), base 8 (octal) and base 16 (hexadecimal). Hextrapolate is useful not only for programmers but for any computer user that needs to convert numbers from one base into another.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Start typing<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/tool-tips.png" width="171" height="105" alt="Tool-tips">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('To get started just begin typing in one of Hextrapolate\'s input fields. As you type each new digit or character all of the other fields will update in realtime to show the equivalent value expressed in other bases and formats. If you try to type a digit that is not valid for a given base Hextrapolate will show you a tool-tip indicating which digits are allowed. There are no arbitrary limits to the size of numbers that you can convert using Hextrapolate; even numbers containing thousands of digits and more can be converted.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'bases')
        accumulate('' + "\n") # RawText
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'let_me_type', 'Getting feedback on errors')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="feature">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Make choices<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/more-choices.png" width="129" height="110" alt="More choices">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Preset fields are provided for the most common bases used in computing (binary, octal, decimal and hexadecimal). In addition to these fields Hextrapolate provides a number of custom fields which you can use to perform exotic conversions (for example, from Base 13 to Base 29) and encodings to and from textual string representations.' + "\n") # RawText (continued)
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
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('h2. Get help when you need it<br>' + "\n") # RawText (continued)
        accumulate('<img src="../gfx/integrated-help.png" width="171" height="105" alt="Integrated help">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The extensive help documentation that you\'re reading right now is always available from the Help menu; the help is embedded inside the application itself so you don\'t need to be connected to the Internet to read it. The Hextrapolate Help is modelled to look just like the familiar and easy-to-use help provided by Apple with its own applications, and you can browse or search through it from within the Mac OS X Help Viewer.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'troubleshooting_tips')
        accumulate('' + "\n") # RawText
        accumulate('* ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'full_index')
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # LearnAbout

  end # WalrusGrammar

end # Walrus

