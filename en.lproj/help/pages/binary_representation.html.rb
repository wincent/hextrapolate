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
require File.expand_path('../../../buildtools/help/basic', File.dirname(__FILE__))

module Walrus
  class Grammar
    class BinaryRepresentation < Basic
      def template_body
        super # (invoked automatically due to Extends directive)
        # Comment: Created by Wincent Colaiuta on 11 April 2007.
        # Comment: Copyright 2007 Wincent Colaiuta
        # Comment: $Id: /mirrors/Hextrapolate/trunk/en.lproj/help/example_basic.tmpl.txt 6745 2007-04-12T13:07:56.741665Z wincent  $
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
        set_value("page_title", instance_eval { 'Binary representation' }) # Set directive
        accumulate('  ') # RawText
        set_value("tag", instance_eval { 'binary_representation' }) # Set directive
        accumulate('  ') # RawText
        lookup_and_accumulate_placeholder(:see_also, lookup_and_return_placeholder(:link_to, 'bases'))
        accumulate('' + "\n") # RawText
      end
      
      def content
        accumulate('' + "\n") # RawText
        accumulate('A binary representation is a number written using Base 2. Each digit may have only one of two possible values (0 or 1) hence the name, binary. Binary representations have many applications in computer science because they map well onto the "off" and "on" states of electronic transistors.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('The first few positive integers written in binary form are:' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('* 1' + "\n") # RawText (continued)
        accumulate('* 10' + "\n") # RawText (continued)
        accumulate('* 11' + "\n") # RawText (continued)
        accumulate('* 100' + "\n") # RawText (continued)
        accumulate('* 101' + "\n") # RawText (continued)
        accumulate('* 110' + "\n") # RawText (continued)
        accumulate('* 111' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('All positive integers (and 0) may be written in binary representation.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
        accumulate('Appending a zero to the right-hand side of a binary representation multiplies it by 2.' + "\n") # RawText (continued)
        accumulate('' + "\n") # RawText (continued)
      end
      
      if __FILE__ == $0   # if run from the command line
        new.run           # same as "walrus run __FILE__"
      else                # if loaded and evaled
        new.fill          # return filled content
      end
    end # BinaryRepresentation
  end # Grammar
end # Walrus
