# Blobbet

Store attributes in a blob in ActiveRecord models

## Installation

Add this line to your application's Gemfile:

    gem 'blobbet'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install blobbet

## Usage

Include Blobbet into your model.
Declare attributes using "blobbet". The default blob is "extras" but you may specify a different one.
Use your attributes as usual.

    class Gibblet < ActiveRecord::Base
      include Blobbet
      blobbet :size
      blobbet :ratio, in: "stuff"
      blobbet :city
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`), with specs.
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
