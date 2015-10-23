require "etsiest/version"
require "pry"
require "etsiest/etsysearch"
require "sinatra/base"

require 'etsy'
Etsy.api_key = ENV['ETSY_KEY']

module Etsiest
  class App < Sinatra::Base
    set :logging, true

    get "/" do
      whiskey = EtsySearch.new
      results = whiskey.find_listings('whiskey')
      # ['title'],
      # image 170x135 => 225 x 179, ['Images']['url_170x135']
      # ['shop']['shop_name'],
      # ['price']
      # ['currency_code']
      erb :index, locals: { results: results }
    end

    run! if app_file == $0
  end
end
