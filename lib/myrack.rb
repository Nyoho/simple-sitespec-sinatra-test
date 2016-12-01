# -*- coding: utf-8 -*-
require 'rubygems'
require 'sinatra'

class MyRackApp < Sinatra::Base
  # configure :production, :development do
  #   enable :logging
  # end
  # set :public_folder, '../' + File.dirname(__FILE__) + '/public'
  # p File.dirname(__FILE__) + '/../public'
  # set :static, true
  set :public_folder, 'public'

  get '/' do
    "#{request.fullpath}"
  end

  get '/1' do
    '世界の皆さん、おはようがんす'
  end

  get '/kakure' do
    '見つかっちゃった!!!'
  end
end

# MyRackApp.run! :host => 'localhost', :port => 4567
