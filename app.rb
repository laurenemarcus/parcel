require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

 get('/') do
   erb(:parcel)
 end

 get('/results') do
   @george = params.fetch('length').to_i()
   @width = params.fetch('width').to_i()
   @height = params.fetch('height').to_i()
   @weight = params.fetch('weight').to_i()
   @parcel_volume = Parcel.new(@george, @width, @height, @weight)
   @cost = Parcel.new(@george, @width, @height, @weight)
   erb(:results)
 end
