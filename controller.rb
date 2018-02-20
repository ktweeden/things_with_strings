require 'sinatra'
require 'sinatra/contrib/all'
require_relative './models/string_things'


get '/' do
  erb(:home)
end

get '/equal/:string1/:string2' do
  @result = StringThings.same?(params[:string1], params[:string2])
  erb(:result)
end

get '/palindrome/:string1' do
  @result = StringThings.palindrome?(params[:string1])
  erb(:result)
end

get '/isogram/:string1' do
  @result = StringThings.isogram?(params[:string1])
  erb(:result)
end

get '/anagram/:string1/:string2' do
  @result = StringThings.anagram?(params[:string1], params[:string2])
  erb(:result)
end
