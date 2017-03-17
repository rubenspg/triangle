# Triangle module containing all classes for running the Triangle program.
# It contains the required code to determine if a triangle is equilateral, isosceles or scalene.
module Triangle

  # Thrown if the received parameters are invalid
  class InvalidTriangleError < Exception; end

  # Triangle class contains all logic for defining wich type of the triangle it is.
  class Triangles
    attr_accessor :side1, :side2, :side3

    def initialize(side1=0,side2=0,side3=0)
      @side1 = side1
      @side2 = side2
      @side3 = side3
      @sides = [@side1, @side2, @side3]
      valid_triangle?
    end

    def type
      case @sides.uniq.size
        when 1 then 'equilateral'
        when 2 then 'isosceles'
        else 'scalene'
      end
    end

    private

    def valid_triangle?
      if @sides.any? { |x| x <= 0 }
        raise InvalidTriangleError, "Sides must be greater than 0"
      end

      if @sides[0] + @sides[1] <= @sides[2]
        raise InvalidTriangleError, "Not valid triangle lengths"
      end
    end
  end
end
