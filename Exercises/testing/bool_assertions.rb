require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!


class Testing < Minitest::Test
  def test_odd
    value = 3
    assert_equal(true, value.odd?)
  end

end