# Hextrapolate

Hextrapolate is a tool to convert numbers between bases (for example: binary, octal, decimal, hexadecimal; in fact, any base from Base 2 to Base 36) with arbitrary precision. A running instance can be found at [hex.wincent.com](http://hex.wincent.com).

## History

Way back in ancient history (late 2003) I wrote a number conversion tool for OS X called WinHex (later renaming it to "Hextrapolate" to avoid confusion with another product of the same name). I did this because I found I frequently needed to perform these kinds of conversions in my development work, I wasn't happy with any of the existing tools, and the project presented me with an opportunity to brush up my skills with the then-new [Cocoa Bindings](http://cocoadevcentral.com/articles/000080.php).

You can see the original product page [here](http://www.wincent.com/a/products/hextrapolate/). It had a couple of interesting features: namely, a nice UI, and the ability to perform arbitrary precision integer conversions, thanks to the venerable [GMP library](https://gmplib.org/).

I feel a fair bit of nostalgia for this little project because it [had documentation](http://www.wincent.com/a/products/hextrapolate/help/front_page.html) that had a single set of source templates from which I could generate multiple outputs (specifically HTML for uploading on the web, and Apple's bastardized pseudo-HTML "help book" format).

In a classic example of Yak shaving, this was built using an object-oriented templating system that I wrote called [Walrus](https://github.com/wincent/walrus), which employed a memoizing "Packrat" PEG based parser generator called [Walrat](https://github.com/wincent/walrat), which was the vehicle that I used to teach myself Ruby and also the first example of a project that I drove pretty much start-to-finish via [BDD](https://en.wikipedia.org/wiki/Behavior-driven_development).

But I digress...

## JavaScript implementation

Fast forward to 2015 and I still find myself needing to convert numbers between bases. The ancient Hextrapolate executable no longer runs on the current version of OS X.

What's a developer to do? Use one of countless number converters available online? Do it yourself in the Chrome developer console with `(number).toString(base)`? Try to get the old Hextrapolate codebase building on current OS X?

Let's scratch that last one right away: Xcode has changed so much with every major version that finding my way around and bringing a project up-to-date is a non-trivial (and unpleasant) undertaking. Not only that, but the aforementioned GMP library is notoriously hard to build.

Why not just rewrite the darn thing in JavaScript? If it involves writing arbitrary precision integer arithmetic routines, sounds like fun. So, this is what you'll find in this repo. (And, for old times' sake, you'll find the old Objective-C codebase on [the `objective-c` branch](https://github.com/wincent/walrat/tree/master) too).

It's not entirely feature complete (for example, it doesn't have the ability to convert to and from different string encodings, yet), but it does have a couple of tiny extras that the original Hextrapolate didn't have, like shortcut buttons for copying values to the clipboard and producing a "permalink" to a specific number.

It's interesting to again confirm how easy it is to build user interfaces with [React](http://facebook.github.io/react/). The uni-directional dataflow makes synchronizing parts of the UI ridiculously straightforward, completely obviating the need for MVC and the two-way data binding that Cocoa Bindings was designed to enable. Another interesting thing to note is just how darn good JS engines are nowadays. With only a little bit of time spent in the profiler, I was able to make the arbitrary precision integer arithmetic routines competitive with the performance of the original (compiled) code. On my lowly MacBook Air, at least, we can easily get into the realm of 1,000-bit numbers and more before we notice any kind of sluggishness. There's almost certainly even more performance still left on the table.

## License

### The MIT License (MIT)

Copyright (c) 2003-present Greg Hurrell

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
