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
      erb :index
    end

    run! if app_file == $0
  end
end
