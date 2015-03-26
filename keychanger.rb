#!/usr/bin/env ruby
require 'securerandom'

api_key = SecureRandom.hex(2) #generate a 4 character hex string for the api key
puts api_key                                                                    
File.write("/tmp/api.key", api_key)                                             

