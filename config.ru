# frozen_string_literal: true

require 'sinatra/base'

# test app
class MyApp < Sinatra::Base
    get '/' do
        'hello world'
    end
end

run MyApp
