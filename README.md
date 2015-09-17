# TypeRight

    _____________________________________________________________________________________
                        ______                       ____
                          /                          /    )   ,         /
    ---------------------/---------------__----__---/___ /--------__---/__--_/_----------
                        /      /   /   /   ) /___) /    |   /   /   ) /   ) /
    ___________________/______(___/___/___/_(___ _/_____|__/___(___/_/___/_(_ ___________
                                 /   /                            /
                             (_ /   /                         (_ /



[![Gem Version](https://badge.fury.io/rb/typeright.svg)](http://badge.fury.io/rb/typeright)
[![Build Status](https://secure.travis-ci.org/nofxx/typeright.svg)](http://travis-ci.org/nofxx/typeright)
[![Code Climate](https://codeclimate.com/github/nofxx/typeright/badges/gpa.svg)](https://codeclimate.com/github/nofxx/typeright)
[![Coverage Status](https://coveralls.io/repos/nofxx/typeright/badge.svg?branch=master&service=github)](https://coveralls.io/github/nofxx/typeright?branch=master)


Makes text more pleasant for the eyes.


Turns this:

```
And so... "Why?" -- He replied (+)
Because -> It's cool! And => I like beautiful text!
Also, notice some math: Pi + 2 * 180 / 2.
```

Into this:


> And so… “Why?” — He replied.
> Because → It’s cool! And ⇒ I like beautiful text!
> Also, notice some math: π + 2 × 180 ÷ 2.


## Install

    gem install typeright


## Use

    Typeright.s(a_text)


## Todo

- Spaces

## Won't Do

Non UTF-8 modifications. Eg. `Small Caps`.

For that complement with a client-side lib:


Inspiration and thanks

https://github.com/davidmerfield/Typeset


## Also nice

http://webtypography.net/
http://kyleamathews.github.io/typography.js/#/
http://htmlarrows.com/
