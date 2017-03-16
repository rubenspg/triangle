# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "triangle"
  spec.version       = '1.0'
  spec.authors       = ["Rubens Goncalves"]
  spec.email         = ["rubenspg@gmail.com"]
  spec.summary       = %q{Program that receives user input and define the triangle' type}
  spec.description   = %q{Program to define with given parameters if a triangle is equilateral, isosceles or scalene.}
  spec.homepage      = "https://github.com/rubenspg/triangle/"
  spec.license       = ""

  spec.files         = ['lib/triangle.rb']
  spec.executables   = ['bin/triangle']
  spec.test_files    = ['tests/test_triangle.rb']
  spec.require_paths = ["lib"]
end
