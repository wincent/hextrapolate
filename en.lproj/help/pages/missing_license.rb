#!/usr/bin/env ruby
# Generated Wed Apr 25 19:48:35 +0200 2007 by Walrus version 0.1

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

    class MissingLicense < Task

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: missing_license.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: missing_license.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { "What to do if you haven't received your license" }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'missing_license' }) # Set directive 
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'registering', 'Registering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'purchasing', 'Purchasing Hextrapolate'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('Once your transaction is complete it will be processed by an automated system and your license code will be sent to you immediately. If you still haven\'t received your license code after a few minutes check the following:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('h2. Check the registration address' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('This is especially important if you paid using PayPal; if you set up your PayPal account a long time ago then your license code may have been sent to an old address. Log in to your PayPal account and double-check your email address.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you paid via Kagi then you should double-check that there are no typographical errors in your email address. You should have received one email from Kagi and one from Wincent. Kagi provides a web interface at <a href="http://info.kagi.com/">info.kagi.com</a> so that you can check the status of your orders.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Check your junk mail folder' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Your license notice may have been incorrectly classified as junk mail. Look inside your junk mail folder to see if the license was put there; it will have a subject line like "Hextrapolate license information" and will originate from the wincent.com domain.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Did you pay via eCheck?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you paid using a PayPal eCheck then the transaction will not be completed until the payment has cleared. eChecks are like real-world checks: PayPal imposes a clearance delay of several days (typically about four business days) before allowing the funds to clear and the transaction to be completed. Immediately upon clearance PayPal\'s automated systems will cause your license notice to be sent to you via email. There is no human intervention required so there should be no additional delays.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('There is nothing I can do to speed up the clearance as it is determined by PayPal policy. If you wish to avoid the delay please choose a payment method other than eCheck.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Do you use a challenge-response system?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If your email account uses a challenge-response system then your license notice won\'t get through (the automated system which sends out license notices cannot respond to such challenges).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Check your quarantined messages folder to see if your license notice has been directed there.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you would like your license notice to be resent, add wincent.com to your whitelist of allowed senders and then use the ') # RawText (continued)
        lookup_and_accumulate_placeholder(:link_to, 'lost_license_codes', 'lost license codes')
        accumulate(' form on the website to have it immediately redelivered.' + "\n") # RawText
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('If you still cannot find your license notice after trying the above, contact me via email at <a href="mailto:support@wincent.com">support@wincent.com</a>.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # MissingLicense

  end # WalrusGrammar

end # Walrus

