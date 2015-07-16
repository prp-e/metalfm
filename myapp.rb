require 'sinatra'
require 'sinatra/assetpack'
require 'mongo'
require 'json/ext'

assets do
 css :application, [
	'/css/stylesheet.css',
	'/css/genres.css'
 ]
 css_compression :sass
end

get '/' do

 erb :index
end

get '/bands' do
end

get '/artists' do
end

get '/albums' do
end

get '/genres' do
	erb :genres
end

get '/genres/heavy' do
end

not_found do 
	status 404
	 'Not Found!'
end

