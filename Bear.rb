class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @fish_eaten = []
  end

  def food_count
    return @fish_eaten.length()
  end

  def eats_fish_from_river(river)
    if river.fish_count > 0
      the_poor_fish = river.remove_fish
      @fish_eaten << the_poor_fish
    end
  end

  def roar
    return "RRRROOOOOAAAAAAARRRRR"
  end

end
