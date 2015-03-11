require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

 get('/') do
   erb(:parcel)
 end

 get('/results') do
   @length = params.fetch('length').to_i()
   @width = params.fetch('width').to_i()
   @height = params.fetch('height').to_i()
   @weight = params.fetch('weight').to_i()
   @parcel_volume = Parcel.new(@length, @width, @height, @weight)
   @cost = Parcel.new(@length, @width, @height, @weight)
   erb(:results)
 end
