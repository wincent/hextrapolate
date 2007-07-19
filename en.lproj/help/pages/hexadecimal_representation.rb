#!/usr/bin/env ruby
# Generated Wed Apr 25 19:47:58 +0200 2007 by Walrus version 0.1

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

    class HexadecimalRepresentation < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: hexadecimal_representation.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: hexadecimal_representation.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Hexadecimal representation' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'hexadecimal_representation' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'bases'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('A hexadecimal representation is a number written using Base 16. Each digit may have only one of 16 possible values (the numerals 0 through 9 and the letters a through f). Hexadecimal representations are frequently used in computing.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('All positive integers (and 0) may be written in hexadecimal representation.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Appending a zero to the right-hand side of a hexadecimal representation multiplies it by 16.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # HexadecimalRepresentation

  end # WalrusGrammar

end # Walrus

