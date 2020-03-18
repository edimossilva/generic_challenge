require "test/unit"
require_relative './uniq'
require 'set'

class UniqSpec < Test::Unit::TestCase
  
  # with_repeated_elements
  def test_SET_uniq_with_repeated_elements
    repeated_elements_array = [1,2,3,1,3,2]
    result = set_uniq(repeated_elements_array)
    
    assert_equal 1, result.count(1)
    assert_equal 1, result.count(2)
    assert_equal 1, result.count(3)
  end
  def test_HASH_uniq_with_repeated_elements
    repeated_elements_array = [1,2,3,1,3,2]
    result = hash_uniq(repeated_elements_array)
    
    assert_equal 1, result.count(1)
    assert_equal 1, result.count(2)
    assert_equal 1, result.count(3)
  end
  
  # uniq_with_many_repeated_elements
  def test_SET_uniq_with_many_repeated_elements
    no_repeated_elements_array = [1,1,1,2,2,2]
    result = set_uniq(no_repeated_elements_array)
    
    assert_equal 1, result.count(1)
    assert_equal 1, result.count(2)
  end
  def test_HASH_uniq_with_many_repeated_elements
    no_repeated_elements_array = [1,1,1,2,2,2]
    result = set_uniq(no_repeated_elements_array)
    
    assert_equal 1, result.count(1)
    assert_equal 1, result.count(2)
  end

  # no_repeated_elements_array
  def test_SET_uniq_with_no_repeated_elements
    no_repeated_elements_array = [1,2,3]
    result = set_uniq(no_repeated_elements_array)
    
    assert_equal 1, result.count(1)
    assert_equal 1, result.count(2)
    assert_equal 1, result.count(3)
  end

  def test_HASH_uniq_with_no_repeated_elements
    no_repeated_elements_array = [1,2,3]
    result = hash_uniq(no_repeated_elements_array)
    
    assert_equal 1, result.count(1)
    assert_equal 1, result.count(2)
    assert_equal 1, result.count(3)
  end
end


