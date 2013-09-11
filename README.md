# BaseXEncoder

BaseXEncoder allows the developer to obfuscate ID fields using an arbitrary base-encoding scheme, with a configurable minimum length.

As an example, consider a circumstance in which you wish to create short links, to public profiles, but wish to prevent urls that are obviously sequential.

* http://domain.com/url/1
* http://domain.com/url/2

That's potentially a problem.  This gem lets you change those links to a less obvious encoding scheme, such that sequential links might look like this:

* http://domain.com/url/AAdg
* http://domain.com/url/AAdh

That's a bit better, and the gem can be made even better by configuring the replacement string of the encoder with a scrambled, out of order, selection of non-repeating characters.

#### Please, DO NOT use this expecting security.  This is intended to make automated crawling more complicated.

## Installation

Add this line to your application's Gemfile:

    gem 'baseXEncoder'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install baseXEncoder

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
