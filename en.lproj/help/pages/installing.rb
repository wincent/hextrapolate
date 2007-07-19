#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:16 +0200 2007 by Walrus version 0.1

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

    class Installing < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: installing.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: installing.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Installing Hextrapolate' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'installing' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'uninstalling'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'quitting', 'quitting Hextrapolate'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Hextrapolate uses a "drag-and-drop" installation procedure. This means that you can install it wherever you wish. The most common location is the <tt>Applications</tt> folder.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Before installing you will need a copy of the Hextrapolate disk image (see ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'downloading', 'downloading Hextrapolate')
        accumulate(').' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('To install Hextrapolate:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` In the Finder, double-click on the Hextrapolate disk image to mount it.' + "\n") # RawText (continued)
        accumulate('` Once the disk image has mounted a window will appear in which you can see the Hextrapolate application.' + "\n") # RawText (continued)
        accumulate('` Drag the Hextrapolate application to a location of your choosing.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you wish to try Hextrapolate without installing it you can run it from the mounted disk image by double-clicking the Hextrapolate application icon. If you do this you will need to quit Hextrapolate before unmounting the disk image.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # Installing

  end # WalrusGrammar

end # Walrus

