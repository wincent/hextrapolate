#!/usr/bin/env ruby
# Generated Wed Apr 25 19:45:59 +0200 2007 by Walrus version 0.1

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../WOCommon/help', 'access').to_s

module Walrus

  class WalrusGrammar

    class FrontPage < Access

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: front_page.rb 90 2007-04-25 17:51:42Z wincent $
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText

      end

      def setup
        accumulate('  ') # RawText
        super # Super directive
        accumulate('  ') # RawText
        # Include (start): settings.txt:
                # Comment: settings.tmpl
                # Comment: A template for application-wide default settings
                # Comment: WOCommon help templates
                # Comment:
                # Comment: Created by Wincent Colaiuta on 11 October 2006.
                # Comment: Copyright 2006-2007 Wincent Colaiuta
                # Comment: $Id: front_page.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Hextrapolate Help' }) # Set directive 
      end
      
      def splash_image
        accumulate('  <img src="gfx/splash.png" alt="Hextrapolate main window" width="200" height="159" border="0">' + "\n") # RawText
      end
      
      def right
        accumulate('  <h2>What\'s new in Hextrapolate?</h2>' + "\n") # RawText
        accumulate('  <p>') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'whats_new', 'Check out great new features.')
        accumulate('</p>' + "\n") # RawText
        accumulate('  <h2>Learn about Hextrapolate</h2>' + "\n") # RawText (continued)
        accumulate('  <p>') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'learn_about', 'Quickly convert numbers of unlimited size')
        accumulate('</p>' + "\n") # RawText
        accumulate('  <h2>Solving problems</h2>' + "\n") # RawText (continued)
        accumulate('  <p>') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'troubleshooting_tips', 'Find the answers to common problems.')
        accumulate('</p>' + "\n") # RawText
        accumulate('  <h2>Index</h2>' + "\n") # RawText (continued)
        accumulate('  <p>') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'full_index', 'Look up topics easily')
        accumulate('</p>' + "\n") # RawText
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # FrontPage

  end # WalrusGrammar

end # Walrus

