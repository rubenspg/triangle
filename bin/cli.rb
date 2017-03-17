require 'thor'
require_relative '../lib/triangle/triangle.rb'

class TringleCLI < Thor
  desc "triangle side1, side2, side3", "Type the integer numbers as arguments and you will identify which type of triangle it is \n\n"
  def triangle(side1=0, side2=0, side3=0)
    triangle=Triangle::Triangles.new(side1.to_i, side2.to_i, side3.to_i)
    puts "The triangle is #{triangle.type}"
  end
end

TringleCLI.start(ARGV)
