require('rspec')
require('triangle')

describe(Triangle) do
  describe("#equilateral") do
    it("returns true if all three sides have the same length") do
      test_equilateral = Triangle.new(3,3,3)
      expect(test_equilateral.equilateral?()).to(eq(true))
    end
  end
  describe("#isosceles") do
    it("returns true if two sides have the same length") do
      test_isosceles = Triangle.new(3,3,4)
      expect(test_isosceles.isosceles?()).to(eq(true))
    end
  end
  describe("#scalene") do
    it("returns true if all three sides have different lengths") do
      test_scalene = Triangle.new(3,2,4)
      expect(test_scalene.scalene?()).to(eq(true))
    end
  end
end
