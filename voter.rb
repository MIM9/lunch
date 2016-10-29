
require 'sinatra'

votes = {}
get '/' do
  @main_title = 'обяд'
  @title = 'Привет!'
  erb :index
end

get '/cast' do
  @main_title = 'обяд'
  @title = 'Благодарим за вашия глас!'
  @vote  = params['vote']
   votes[@vote] = votes.fetch(@vote, 0) + 1
  erb :cast
end
get '/results' do
  @main_title = 'обяд'
  @votes = votes
  erb :results
end