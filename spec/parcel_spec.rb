require('rspec')
require('parcel')

describe(Parcel) do
  describe('#volume') do
    it("returns the volume of a parcel") do
      test_parcel = Parcel.new(4, 5, 6, 10)
      test_parcel.volume()
      expect(test_parcel.volume()).to(eq(120))
    end
  end

  describe('#cost_to_ship') do
    it("returns the cost to ship a parcel") do
      test_parcel = Parcel.new(4, 5, 6, 10)
      test_parcel.cost_to_ship()
      expect(test_parcel.cost_to_ship()).to(eq(20))
    end
  end
end
