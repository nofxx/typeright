#!/usr/bin/env ruby
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'benchmark'
require 'typeright'

puts
puts "                                    Typeright! v#{Typeright::VERSION}"

N = 100_000
P1 = "Some 'simple' paragraph -> will be nice to -- see"
P2 = <<DOC

From https://pine.fm/LearnToProgram/

I guess this all began back in 2002. I was thinking about teaching programming, and what a great language Ruby would be for learning how to program. I mean, we were all excited about Ruby because it was powerful, elegant, and really just fun, but it seemed to me that it would also be a great way to get into programming in the first place.

Unfortunately, there wasn't much Ruby documentation geared for newbies at the time. Some of us in the community were talking about what such a "Ruby for the Nuby" tutorial would need, and more generally, how to teach programming at all. The more I thought about this, the more I had to say (which surprised me a bit). Finally, someone said, "Chris, why don't you just write a tutorial instead of talking about it?" So I did.

And it wasn't very good. I had all these ideas that were good in theory, but the actual task of making a great tutorial for non-programmers was vastly more challenging than I had realized. (I mean, it seemed good to me, but I already knew how to program.)

What saved me was that I made it really easy for people to contact me, and I always tried to help people when they got stuck. When I saw a lot of people getting stuck in one place, I'd rewrite it. It was a lot of work, but it slowly got better and better.

A couple of years later, it was getting pretty good. :-) So good, in fact, that I was ready to pronounce it finished, and move on to something else. And right about then came an opportunity to turn the tutorial into a book. Since it was already basically done, I figured this would be no problem. I'd just clean up a few spots, add some more exercises, maybe some more examples, a few more chapters, run it by 50 more reviewers...

It took me another year, but now I think it's really really good, mostly because of the hundreds of brave souls who have helped me write it.

DOC

Benchmark.bmbm do |b|
  b.report { N.times { Typeright.s(P1) } }
  b.report { N.times { Typeright.s(P2) } }
end
