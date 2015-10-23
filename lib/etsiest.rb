require "etsiest/version"
require "pry"
require "etsiest/etsysearch"

require 'etsy'
Etsy.api_key = ENV['ETSY_KEY']

module Etsiest
  class App
    binding.pry
  end
end
