[![Build Status](https://travis-ci.org/karlentwistle/ruby_home-tlv.svg?branch=master)](https://travis-ci.org/karlentwistle/ruby_home-tlv)

# RubyHome::TLV

This library implements a TLV-HAP parser, used for processing HomeKit Accessory Protocol Specification (HAP) related data.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby_home-tlv'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby_home-tlv


## Usage

```ruby
require 'ruby_home/tlv'

RubyHome::TLV.decode('010568656c6c6f') => {identifier: 'hello'}
RubyHome::TLV.encode({identifier: 'hello'}) => '010568656c6c6f'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/karlentwistle/ruby_home-tlv.
