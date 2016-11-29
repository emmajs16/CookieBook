require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end

 get '/questions' do
   erb :questions
 end

 get '/breakfast.erb' do
   erb :breakfast
 end

 get '/snack' do
   erb :snack
 end

 get '/dessert' do
   erb :dessert
 end

 post  '/results' do
   answers = params.values
   @total= 0
   answers.each do |answer|
     @total += answer.to_i
   end
   puts @total

   @cookie = cookie_chooser(@total)
   if @cookie == "breakfast"
     erb :breakfast
   elsif @cookie == "snack"
     erb :snack
   elsif @cookie == "dessert"
     erb :dessert
  end
end
end
