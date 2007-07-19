#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:47 +0200 2007 by Walrus version 0.1

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

    class Registering < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: registering.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: registering.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Registering Hextrapolate' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'registering' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'activation', 'Activation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'unregister', 'Unregistering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'transferring_license', 'Transferring your license to another machine'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Once you have ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'purchasing', 'purchased a Hextrapolate license')
        accumulate(' you will receive a license code via email. To complete the registration you will copy your license code from the email into Hextrapolate.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('To register your copy of Hextrapolate:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` From the Hextrapolate menu select Register…' + "\n") # RawText (continued)
        accumulate('` When the registration preference pane appears, click the "Enter license code" button' + "\n") # RawText (continued)
        accumulate('` When the confirmation sheet drops down, enter your email address _exactly_ as it appears in your license notice (if you enter a different address your license will not work) into the text field labelled "Email address"' + "\n") # RawText (continued)
        accumulate('` In the field labelled "License code", enter your license code exactly as it appears in your license notice; license codes are quite long so the best way to do this is to use copy and paste (you can copy the entire code at once as a single slab of text)' + "\n") # RawText (continued)
        accumulate('` Click the Verify button to activate your license' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Screenshots' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/register-menu-item.png" width="284" height="322" alt="Register menu"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/registration-pane.png" width="464" height="389" alt="Registration preferences pane"></div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div class="screenshot"><img src="../gfx/registration-sheet.png" width="456" height="339" alt="Registration sheet"></div>  ' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # Registering

  end # WalrusGrammar

end # Walrus

