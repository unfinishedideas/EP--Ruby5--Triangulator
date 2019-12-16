class Triangulator

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1.to_i
    @side_2 = side_2.to_i
    @side_3 = side_3.to_i
  end

  def check_type()
    if (@side_1.class != Integer) || (@side_2.class != Integer) || (@side_3.class != Integer)
      return false
    elsif (@side_1) > (@side_2 + @side_3) || (@side_2) > (@side_1 + @side_3) || (@side_3) > (@side_2 + @side_1)
      return "Not a triangle!"
    elsif (@side_1 != @side_2) && (@side_1 != @side_3) && (@side_2 != @side_3)
      return "You have a Scalene triangle on your hands!"
    elsif (@side_1 == @side_2) && (@side_1 == @side_3)
      return "It's Equalateral!"
    elsif (@side_1 == @side_2) || (@side_2 == @side_3) || (@side_1 == @side_3)
      return "You have a Iso triangle on your hands!"
    end

  end













end
