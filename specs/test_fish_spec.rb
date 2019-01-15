require("minitest/autorun")
require("minitest/rg")

require_relative("../Fish")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Jack")
    @fish2 = Fish.new("Sally")
    @fish3 = Fish.new("Phil")
  end

  def test_create_fish
    assert_equal("Jack", @fish1.name)
  end

end
