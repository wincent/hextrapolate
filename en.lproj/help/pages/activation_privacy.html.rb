#!/usr/bin/env ruby
# encoding: utf-8
# Generated by Walrus <http://walrus.wincent.com/>

begin
  require 'rubygems'
rescue LoadError
  # installing Walrus via RubyGems is recommended
  # otherwise Walrus must be installed in the RUBYLIB load path
end

require 'walrus/document'
require File.expand_path('../../../buildtools/help/task', File.dirname(__FILE__))

module Walrus
  class Grammar
    class ActivationPrivacy < Task
      def template_body
        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id$
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
        accumulate('' + "\n") # RawText
      end

      def setup
        accumulate('  ') # RawText
        # Include (start): ../settings.txt:
                # Comment: settings.tmpl
                # Comment: A template for application-wide default settings
                # Comment: buildtools help templates
                # Comment:
                # Comment: Copyright 2006-2010 Wincent Colaiuta. All rights reserved.
                # Comment:
                # Comment: Redistribution and use in source and binary forms, with or without
                # Comment: modification, are permitted provided that the following conditions are met:
                # Comment:
                # Comment: 1. Redistributions of source code must retain the above copyright notice,
                # Comment:    this list of conditions and the following disclaimer.
                # Comment: 2. Redistributions in binary form must reproduce the above copyright notice,
                # Comment:    this list of conditions and the following disclaimer in the documentation
                # Comment:    and/or other materials provided with the distribution.
                # Comment:
                # Comment: THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
                # Comment: AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
                # Comment: IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
                # Comment: ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR CONTRIBUTORS BE
                # Comment: LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
                # Comment: CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
                # Comment: SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
                # Comment: INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
                # Comment: CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
                # Comment: ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
                # Comment: POSSIBILITY OF SUCH DAMAGE.
                accumulate('' + "\n") # RawText
                # Comment:
                # Comment: appliction-wide default settings go in here
                # Comment:
                accumulate('' + "\n") # RawText
                set_value("book_id", instance_eval { 'Hextrapolate Help' }) # Set directive
                set_value("book_icon", instance_eval { 'Hextrapolate Help/gfx/icon16.png' }) # Set directive
                set_value("author", instance_eval { 'Wincent Colaiuta' }) # Set directive
                set_value("author_email", instance_eval { 'win@wincent.com' }) # Set directive
                set_value("copyright", instance_eval { 'Copyright 2007-2010 Wincent Coliauta' }) # Set directive
                accumulate('' + "\n") # RawText
                # Comment:
                # Comment: the page_title should be overridden on a per-page basis
                # Comment:
                accumulate('' + "\n") # RawText
                set_value("page_title", instance_eval { 'Help' }) # Set directive
        accumulate('  ') # RawText
        set_value("page_title", instance_eval { 'Activation privacy' }) # Set directive
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'activation_privacy' }) # Set directive
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to_category, 'activation_topics', 'Activation topics'))
        accumulate('' + "\n") # RawText
        accumulate('  ') # RawText (continued)
        lookup_and_accumulate_placeholder(:category, 'activation_topics')
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('These are the answers to common questions about the privacy aspects of activation.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Is my personal information transmitted to the server?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('No. None of your personal information nor any other information about (or stored on) your computer is sent to the server, not even your license code or the name of the product which you are activating.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The product activation system has been carefully designed to not transmit any of your personal information across the network. There are multiple layers which protect your privacy and confidentiality:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('` At a design level the protocol requires neither the transmission nor the storage of your personal information' + "\n") # RawText (continued)
        accumulate('` The information that actually is transmitted is effectively indistinguishable from random data because it is the product of a one-way cryptographic digest function (see below)' + "\n") # RawText (continued)
        accumulate('` All communications take place over a protected SSL-encrypted connection' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('When you install Hextrapolate for the first time it generates a number that is unique to the machine on which the software is being installed without actually identifying the machine. The number is what is known as a one-way cryptographic hash; it\'s so-called because the calculation only works in one direction: it is easy to generate the number based on the machine, but it is impossible to look at the number and know which machine it came from. You can read a basic introduction to cryptographic hashes <a href="http://en.wikipedia.org/wiki/Cryptographic_hash_function">here</a>.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('A hash is also made from your license code. The one-way nature of the hash means that if somebody were to see it he or she would have no way of figuring out what your license code was; nevertheless, the hash is a unique number and no two licenses will produce the same hash.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('These two pieces &mdash; the "machine hash" and the "license hash" &mdash; are sent to the Wincent server at activation time. If the server sees many activation requests coming in with the same license hash but lots of different machine hashes, then it knows that the software is being activated on many different machines with the same license code. Note that because one-way hashes are used in the process nobody can personally identify machines or customers; the numbers are just random ID numbers that cannot be traced back to a particular individual or computer.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h2. Does the software "phone home"?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Wincent products will never "phone home" without your permission. Product activation occurs when you first enter your license code and you press the "Verify" button (the user interface makes it very clear that clicking that button will connect). If you cannot connect to the Internet to perform the activation, the software will remind you to do so the next time you run it.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Wincent software won\'t attempt to phone home for other purposes either; see the <a href="http://wincent.com/a/about/privacy/">Wincent privacy policy</a> for more general information.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('h3. What happens if somebody on the network is spying when the activation occurs?' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('As explained above none of your personal information is transmitted to the server during the activation process. The information that is transmitted would be useless to any third-party observer because it could not be used to determine anything that would identify you or reveal what your license code is. An additional layer of protection is provided because all connections are performed over an encrypted SSL link. No information is stored on the server, other than the number of activations.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
      if __FILE__ == $0   # if run from the command line
        new.run           # same as "walrus run __FILE__"
      else                # if loaded and evaled
        new.fill          # return filled content
      end
    end # ActivationPrivacy
  end # Grammar
end # Walrus
