require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!


class Testing < Minitest::Test
  def test_odd
    value = 3
    assert(value.odd?, 'value is not odd')
  end

  def test_downcase
    value = 'XYZ'
    assert_equal 'xyz', value.downcase
  end

  def test_nil
    value = nil
    assert_nil(value)
  end

  def test_list
    value = []
    assert_empty(value)
  end

  def test_find
    value = ['xyz']
    assert_includes(value, 'xyz')
  end

  # def test_hire
  #   assert_raises(NoExperienceError) { employee.hire}
  # end
  # 
  def test_type
    value = Numeric.new
    assert_kind_of(Numeric, value)
  end

  # def test_process
  #   assert_same(list, list.process)
  # end
  def test_not_found
    value = ['abc']
    refute_includes(value, 'xyz')
  end
end