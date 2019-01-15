require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")
require_relative("../River")

class TestRiver < MiniTest::Test

  def setup
    @river = River.new("Clyde")
    @fish1 = Fish.new("Jack")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Phil")
  end

  def test_create_river
    assert_equal("Clyde", @river.name)
  end

  def test_add_fish_to_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.add_fish(@fish3)
    assert_equal(3, @river.fish_count())
  end
end
