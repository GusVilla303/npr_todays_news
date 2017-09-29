require "bundler"

puts "This is my config/environment file"
Bundler.require

require "open-uri"
require_all './lib'
