$:.unshift(File.dirname(__FILE__))

begin
   require 'rubygems'
rescue LoadError
   nil
end

module GoogleMini
  VERSION = '0.0.1'
end

require 'httparty'
require 'google-mini/google-mini'
require 'google-mini/result'
require 'google-mini/search'
require 'google-mini/keymatch'