require "triangle"
require "test/unit"

class TestTriangle < Test::Unit::TestCase

  def test_triangle
    triangle = Triangle::Triangles.new(2,2,3)
    assert_equal(2, triangle.side1)
    assert_equal(2, triangle.side2)
    assert_equal(3, triangle.side3)
  end

  def test_triangle_equilateral
    triangle = Triangle::Triangles.new(2,2,2)
    assert_equal(2, triangle.side1)
    assert_equal(2, triangle.side2)
    assert_equal(2, triangle.side3)
    assert_equal('equilateral', triangle.type)
  end

  def test_triangle_isosceles
    triangle = Triangle::Triangles.new(2,2,3)
    assert_equal(2, triangle.side1)
    assert_equal(2, triangle.side2)
    assert_equal(3, triangle.side3)
    assert_equal('isosceles', triangle.type)
  end

  def test_triangle_scalene
    triangle = Triangle::Triangles.new(2,3,1)
    assert_equal(2, triangle.side1)
    assert_equal(3, triangle.side2)
    assert_equal(1, triangle.side3)
    assert_equal('scalene', triangle.type)
  end

  def test_invalid_triangle
    assert_raise Triangle::InvalidTriangleError do
      Triangle::Triangles.new(0,0,1)
    end
  end
end
