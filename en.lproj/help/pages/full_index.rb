#!/usr/bin/env ruby
# Generated Wed Apr 25 19:47:49 +0200 2007 by Walrus version 0.1

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.join(File.dirname(__FILE__), '../../../WOCommon/help', 'master_full_index').to_s

module Walrus

  class WalrusGrammar

    class FullIndex < MasterFullIndex

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: full_index.rb 90 2007-04-25 17:51:42Z wincent $
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        # Comment:#############################################################################
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
                # Comment: $Id: full_index.rb 90 2007-04-25 17:51:42Z wincent $
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
        super # Super directive
      end
      
      def main_box
        accumulate('  ' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        # Comment: index items will appear in the order that they are added
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        # Comment: to auto-update this list run ../../WOCommon/help/index_grep.rb  from the help directory
        accumulate('' + "\n") # RawText
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'ascii', 'ASCII text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'activation', 'Activation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'activation_best_practices', 'Activation best practices'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'activation_privacy', 'Activation privacy'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'backing_up_your_license', 'Backing up your license'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'binary_representation', 'Binary representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'decimal_representation', 'Decimal representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'digit_error', 'Digit errors'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'boms', 'Does Hextrapolate use BOMs?'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'downloading', "Downloading Hextrapolate"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'locating_hextrapolate', 'Finding out where Hextrapolate is installed'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'force_quitting', 'Force Quitting Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'hexadecimal_representation', 'Hexadecimal representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'how_does_activation_work', 'How does product activation work?'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'how_many_times_may_i_activate', 'How many times may I activate?'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'how_to_file_a_good_bug_report', 'How to file a good bug report'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'feature_requests', 'How to submit a feature request'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'installing', "Installing Hextrapolate"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'obtaining_a_system_profiler_report', 'Obtaining a System Profiler report'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'octal_representation', 'Octal representation'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'purchasing', 'Purchasing Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'quitting', 'Quitting Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'registering', 'Registering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'reporting_bugs', 'Reporting bugs'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'getting_support', 'Requesting support'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'resetting_the_preferences', 'Resetting the preferences'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'resetting_your_activation_limit', 'Resetting your activation limit'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'sending_feedback', 'Sending feedback'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'encoding_error', 'Text encoding errors'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'transferring_license', 'Transferring your license to another machine'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'troubleshooting_tips', 'Troubleshooting tips'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'utf16', 'UTF-16 text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'utf8', 'UTF-8 text encoding'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'uninstalling', "Uninstalling Hextrapolate"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'unregister', 'Unregistering Hextrapolate'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'what_happens_if_wincent_stops_trading', 'What happens if Wincent stops trading?'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'what_happens_if_the_network_is_down', 'What happens if the network is down when I try to activate?'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'missing_license', "What to do if you haven't received your license"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'lost_license_codes', "What to do if you lose your license code"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'blank_fields', "Why are the text fields blank?"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'garbage_in_text_fields', "Why are there garbage characters in the text fields?"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'let_me_type', "Why doesn't Hextrapolate let me type the characters I want?"))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:index_item, lookup_and_return_placeholder(:link_to, 'why_use_product_activation', 'Why use product activation?'))
        accumulate('' + "\n") # RawText
        accumulate('    ' + "\n") # RawText (continued)
        accumulate('  ') # RawText (continued)
        super # Super directive
        accumulate('  ' + "\n") # RawText
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # FullIndex

  end # WalrusGrammar

end # Walrus

