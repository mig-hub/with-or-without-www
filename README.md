> I can live with or without WWW...
– Bono from U2

WithOrWithoutWWW
================

This Rack middleware is ridiculously simple.
It just add or remove `www` from your host name depending on what you want.
This is good for SEO to gather everything under one host name.

Normally, this is done in your vhost settings, which means that this middleware is for
when you don't have access to vhosts settings like on Heroku for example.

Install it:

    sudo gem install with-or-without-www

Require it in your Rackup file:

    require 'with_or_without_www'

Use it:

    use WithOrWithoutWWW

And then it adds `www` if somebody tries to reach the website without it.
Whereas:

    use WithOrWithoutWWW, false

Will do the opposite.
It will remove the `www` from your host name.

I almost feel guilty to make a Gem for that.

Thx for reading,
Mig