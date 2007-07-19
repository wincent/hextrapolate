#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:19 +0200 2007 by Walrus version 0.1

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

    class BackingUpYourLicense < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: backing_up_your_license.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: backing_up_your_license.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Backing up your license' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'backing_up_your_license' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'registering', 'Registering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'activation', 'Activation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'lost_license_codes', 'Lost license codes'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('h2. Backing up your license notice' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Although it is possible to have your license code resent to you by an automated system it is still highly recommended that you make backups when you receive your license notice via email.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* _Email addresses change_: if you change email addresses you might not be able to have your code remailed to your automatically.' + "\n") # RawText (continued)
        accumulate('* _Hard drives fail_: don\'t just copy the license notice to another location on your hard drive; print it out as well so that you have a hard-copy in the event of a hardware failure.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Backing up your license certificate' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('When you ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'registering', 'register')
        accumulate(' Hextrapolate a license certificate is created inside your <tt>Library</tt> folder. Upon ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'activation', 'activating')
        accumulate(' an activation certificate will be created as well. You can make manual copies of these and store them in a safe place.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('To manually back-up your license and activation certificate:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` Quit Hextrapolate.' + "\n") # RawText (continued)
        accumulate('` Using the Finder, go to your home directory and open the <tt>Library</tt> folder' + "\n") # RawText (continued)
        accumulate('` Inside the <tt>Library</tt> folder, open the <tt>Preferences</tt> folder' + "\n") # RawText (continued)
        accumulate('` Copy the files <tt>com.wincent.Hextrapolate.license.plist</tt> and <tt>com.wincent.Hextrapolate.activation.certificate.plist</tt> from the <tt>Preferences</tt> folder to the backup location of your choice (for example, another disk, a recordable CD or DVD, or a USB stick)' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # BackingUpYourLicense

  end # WalrusGrammar

end # Walrus

