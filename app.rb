require "bundler/setup"
Bundler.require :default

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file}
require 'pry'
also_reload('lib/**/*.rb')

# NOTE: comment Populate.run when running tests
# Populate.run

get('/') do
  erb :index
end

get('/regions/:region') do
  @region = params['region']
  @hikes = Hike.all
  # @region = Region.find(region_id)
  erb :region
end

get('/hikes/:id') do
  hike_id = params['id']
  @hike = Hike.find(hike_id)
  weather = @hike.forecast
  @current_weather = weather.shift
  @forecast = weather
  erb :hike
end

get '/features/:id' do
  feature_id = params['id']
  @feature = Feature.find(feature_id)
  erb :feature
end

get '/map' do
  erb :map
end

get '/search' do
  erb :search
end

get '/search1' do
  search = params['search1'].upcase
  @hikes = Hike.where("upper(name) like ?", "%#{search}%").order("name")
  erb :search_results
end

get '/search2' do
  search = params['search2']
  erb :search_results
end

get '/search3' do
  search = params['search3']
  @hikes = Hike.where
  erb :search_results
end

get '/search4' do
  search = params['search4']
  @hikes = Hike.where
  erb :search_results
end

get '/search5' do
  search = params['search5'].upcase
  @hikes = Hike.where
  erb :search_results
end

get '/search6' do
  search = params['search6']
  @hikes = Hike.where
  erb :search_results
end
