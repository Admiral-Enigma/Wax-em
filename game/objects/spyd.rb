
class Spyd
  SPEED = 5
  def initialize(x, y, dir)
    @x = x
    @y = y
    @dir = dir
    @sheet = Gosu::Image.new('assets/images/spyd.png')
    @radius = 32
  end

  def draw
    @sheet.draw(@x - @radius, @y - @radius, 2)
  end

  def update

  end
end
