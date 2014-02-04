require "ssha/version"
require 'base64'
require 'digest'
module SSHA
  # Your code goes here...

  # get 16 random hex bytes
  #
  def self.new_salt
    16.times.inject('') {|t| t << rand(16).to_s(16)}
  end

  # hash the password using the given salt. If no salt is supplied, use a new
  # one.
  #
  def self.hash_password(password, salt=SSHA.new_salt)
    salt.to_s + "{SSHA}" + Base64.encode64("#{Digest::SHA1.digest("#{password}#{salt}")}#{salt}").chomp
  end

  # Check the supplied password against the given hash and return true if they
  # match, else false.
  #
  def self.check_password(password, ssha)
    #decoded = Base64.decode64(ssha[/{SSHA}(.*?)$/, 1])
    #hash = decoded[0,20] # isolate the hash
    salt = ssha[/\*(.+?)\*{SSHA}.+$/, 1] # isolate the salt
    self.hash_password(password, salt) == ssha
  end
end
