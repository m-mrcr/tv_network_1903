require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require 'pry'

class CharacterTest < MiniTest::Test

  def setup
    @kitt = Character.new({name: "Kitt", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_it_initiates_with_name
    assert_equal "Kitt", @kitt.name
  end

  def test_it_initiates_with_actor
    assert_equal "William Daniels", @kitt.actor
  end

  def test_it_initiates_with_salary
    assert_equal 1_000_000, @kitt.salary
  end

end
