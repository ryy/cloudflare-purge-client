# Cloudflare Purge Client

This Ruby gem is an API wrapped version of purging the Cloudflare cache. For more information, please refer to the API documentation.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cloudflare-purge-client'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cloudflare-purge-client


## Configuration
Configuration is done through a block returning an instance of `Cloudflare::Purge::Client`. The block is mandatory and if not passed, an `ArgumentError` will be thrown.

```ruby
client = Cloudflare::Purge::Client.new do |config|
  config.zone_id = "your cloudflare zone_id"
  config.email = "your.cloudflare.email@example.com"
  config.auth_key = "your cloudflare auth_key"
end
```

## Usage
The result of configuration is an instance of `Cloudflare::Purge::Client`.

Remove ALL files from Cloudflare's cache.
```ruby
# It's so simple!
client.purge_all_file
```

Granularly remove one or more files from Cloudflare's cache either by specifying URLs.
```ruby
files = ["https://your-domain.com", "https://your-domain.com/a", "https://your-domain.com/b"]
client.purge_file_by_url(files: files)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/cloudflare-purge-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/cloudflare-purge-client/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cloudflare::Purge::Client project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cloudflare-purge-client/blob/master/CODE_OF_CONDUCT.md).
