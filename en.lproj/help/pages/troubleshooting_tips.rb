#!/usr/bin/env ruby
# Generated Wed Apr 25 19:49:14 +0200 2007 by Walrus version 0.1

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

    class TroubleshootingTips < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: troubleshooting_tips.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: troubleshooting_tips.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'Troubleshooting tips' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'troubleshooting_tips' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'reporting_bugs'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'troubleshooting')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('There are number of basic troubleshooting techniques that you can try whenever you experience problems with Mac OS X. These tips apply equally to all Mac OS X applications, not just Hextrapolate.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('h2. Update to the latest version' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The latest version of Hextrapolate may already contain a fix for the problem. See ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'upgrading_hextrapolate')
        accumulate(' for information on how to updgrade to the latest version.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Try logging out' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you have been logged in for a long time your system\'s environment may have degraded to the point where subtle problems occur. You can rule out these causes by logging out and logging in again. If the problem continues to occur after a log-out/log-in cycle then you should continue troubleshooting.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Try rebooting' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Likewise, if you system has been running for a long time without a reboot performance may be degraded and other subtle problems may occur. Try rebooting and see if the problem persists.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Try an uninstall/reinstall cycle' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Sometimes in the day-to-day use of a system files get moved, deleted, and overwritten. You should try uninstalling the software and then reinstalling it. See ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'uninstalling')
        accumulate(' and ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'uninstalling', 'uninstalling Hextrapolate')
        accumulate(' for information on how to do this.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('If the problem goes away, you know that your previous installation was somehow damaged.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Reset your preferences' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Preference files can become corrupted or unreadable over time, and in some cases this can lead to crashes or application misbehaviour. You can rule out this cause by ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'resetting_the_preferences')
        accumulate('.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Rule out potential conflicts with third-party software' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you have any third-party software installed, especially if it is a system modification, it could potentially cause a conflict with other programs on your Mac. To rule out this as a possible cause, try temporarily disabling third-party add-ons and see if the problem goes away.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Check for a corrupt disk' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Check your hard disk for corruption by booting from your Mac OS X install disc and running Disk Utility.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('You can do this by inserting your Mac OS X install disc and restarting while holding down the C key. Once booting is complete you can choose Disk Utility from the Utilities menu and verify your disk.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Try from another user account' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Try to reproduce the problem when logged in to a different user account on the same machine. This will rule out any causes that may be confined to your specific account (settings, caches files, preferences and so on).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Try from another machine' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Taking this troubleshooting technique even further, if you have more than one machine you can try reproducing the problem on another computer. If the problem is present only on one machine then there is possible a local, machine-specific cause.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If your troubleshooting is not successful, please ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'reporting_bugs', 'file a bug report')
        accumulate(' or ') # RawText
        lookup_and_accumulate_placeholder(:link_to, 'getting_support', 'ask for support')
        accumulate('.' + "\n") # RawText
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # TroubleshootingTips

  end # WalrusGrammar

end # Walrus

