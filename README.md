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


#Example
    > SSHA.hash_password('test')
    => "*4e48d0e9c221f4b5*{SSHA}awu0CUj+cApR53Hw2KQAh5grsX40ZTQ4ZDBlOWMyMjFmNGI1"




## Contributing

1. Fork it ( http://github.com/nightweb/ssha/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
