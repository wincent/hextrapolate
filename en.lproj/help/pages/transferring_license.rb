#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:08 +0200 2007 by Walrus version 0.1

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../../WOCommon/help', 'task').to_s

module Walrus

  class WalrusGrammar

    class TransferringLicense < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: transferring_license.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: transferring_license.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Transferring your license to another machine' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'transferring_license' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'registering', 'Registering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'unregister', 'Unegistering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'activation', 'Activation'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('In order to transfer your Hextrapolate license from one machine to another you first ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'unregister')
        accumulate(' the existing installed copy and then ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'registering', 'register')
        accumulate(' the copy on the new machine.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('You can do this from within the Hextrapolate registration preference pane. Alternatively, you can copy the license file from one machine to another as described below.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('To manually copy your license from one machine to another:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` Quit Hextrapolate.' + "\n") # RawText (continued)
        accumulate('` Using the Finder, go to your home directory and open the <tt>Library</tt> folder' + "\n") # RawText (continued)
        accumulate('` Inside the <tt>Library</tt> folder, open the <tt>Preferences</tt> folder' + "\n") # RawText (continued)
        accumulate('` Copy the file <tt>com.wincent.Hextrapolate.license.plist</tt> from the <tt>Preferences</tt> folder to the corresponding folder on your target machine.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('There is no need to copy your activation certificate (<tt>com.wincent.Hextrapolate.activation.certificate.plist</tt>) to the new machine as these certificates are specific to the machine on which you performed the activation.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # TransferringLicense

  end # WalrusGrammar

end # Walrus

