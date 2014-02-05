# Ssha

This module create SSHA hash and check password


## Installation

Add this line to your application's Gemfile:

    gem 'ssha'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ssha

## Usage

    SSHA.hash_password('password')

or

    SSHA.hash_password('password', 'you salt')


Check password:

    if SSHA.check_password('password','you hash')
      puts "password OK"
    else
      puts "Wrong password"
    end


SSHA.check_password('test','you hash')




## Contributing

1. Fork it ( http://github.com/[my-github-username]/ssha/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
