require 'bundler'
Bundler.require
require_relative 'models/questions'

class MyApp < Sinatra::Base

 get'/' do
  erb :index
 end

 # get '/questions.h' do
 #   erb :questions
 # end

 get '/bosnian.html' do
   erb :bosnian
 end

 get '/espgnol.html' do
   erb :espanol
 end

 get '/food.html' do
   erb :food
 end

 get '/francias.html' do
   erb :francias
 end

 get '/medicine.html' do
   erb :medinine
 end

 get '/qr.html' do
   erb :qr
 end

 get '/service.html' do
   erb :service
 end

 get '/shelter.html' do
   erb :shelter
 end

 get '/index.html' do
   erb :index
 end
 # get '' do
 #   erb :breakfast
 # end
 #
 # get '/snack' do
 #   erb :snack
 # end
 #
 # get '/dessert' do
 #   erb :dessert
 # end

#  post  '/results' do
#    answers = params.values
#    @total= 0
#    answers.each do |answer|
#      @total += answer.to_i
#    end
#    puts @total
#
#    @cookie = cookie_chooser(@total)
#    if @cookie == "cranberry"
#      erb :cranberry
#    elsif @cookie == "trailmix"
#      erb :trailmix
#    elsif @cookie == "chocolatey"
#      erb :chocolatey
#   end
# end
end
