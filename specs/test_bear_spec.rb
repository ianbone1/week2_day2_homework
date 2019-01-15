require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")
require_relative("../River")
require_relative("../Bear")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Cuddly")
    @river = River.new("Clyde")
    @fish1 = Fish.new("Jack")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Phil")
  end

  def test_create_bear
    assert_equal("Yogi", @bear.name)
    assert_equal("Cuddly", @bear.type)
  end

  def test_roar
    assert_equal("RRRROOOOOAAAAAAARRRRR", @bear.roar)
  end

end
