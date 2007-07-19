#!/usr/bin/env ruby
# Generated Wed Apr 25 19:46:43 +0200 2007 by Walrus version 0.1

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

    class FeatureRequests < Basic

      def template_body

        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: feature_requests.rb 90 2007-04-25 17:51:42Z wincent $
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
                # Comment: $Id: feature_requests.rb 90 2007-04-25 17:51:42Z wincent $
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
        set_value("page_title", instance_eval { 'How to submit a feature request' }) # Set directive 
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'feature_requests' }) # Set directive 
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('There are two avenues for submitting a feature request for Hextrapolate:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('<div id="task_box">' + "\n") # RawText (continued)
        accumulate('  ' + "\n") # RawText (continued)
        accumulate('* Submit a feature request via the web at <a href="http://bugs.wincent.com/">bugs.wincent.com</a>' + "\n") # RawText (continued)
        accumulate('* Submit a feature request via email to <a href="mailto:features@wincent.com">features@wincent.com</a>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('</div>' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Submitting a feature request via the web is strongly recommended because you can use the web interface to perform a search before submitting (it may be that someone else has already requested the enhancement).' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
    
      if __FILE__ == $0   # when run from the command line the default action is to call 'run'
        new.run
      end

    end # FeatureRequests

  end # WalrusGrammar

end # Walrus

