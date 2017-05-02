
class Player
  FRICTION = 0.9
  def initialize(x, y)
    @x = x
    @y = y

    @velx = 0
    @vely = 0
    @image = Gosu::Image.new('assets/images/player.png')
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def update
    @x += @velx
    @y += @vely
  end
end
