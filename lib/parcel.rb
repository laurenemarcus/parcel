class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    @parcel_volume = @length.*(@width).*(@height)
  end

  define_method(:cost_to_ship) do
    @cost = self.volume()/6
  end
end
