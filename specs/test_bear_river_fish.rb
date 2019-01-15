require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")
require_relative("../River")
require_relative("../Bear")

class TestBearRiverFish < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "Cuddly")
    @river = River.new("Clyde")
    @fish1 = Fish.new("Jack")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Phil")
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
  end

  def test_bear_eats_fish
    @bear.eats_fish_from_river(@river)
    assert_equal(2,@river.fish_count())
    assert_equal(1,@bear.food_count())
  end

end
