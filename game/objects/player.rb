
class Player
  FRICTION = 0.9
  SPEED = 4
  def initialize(window, x, y)
    @x = x
    @y = y
    @velx = 0
    @vely = 0
    @image = Gosu::Image.new('assets/images/player.png')
    @radius = 1
    @window = window
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def button_down(id)
    if id == Gosu::KbUp
      @vely += -SPEED
    end

    if id == Gosu::KbDown
      @vely += SPEED
    end
  end
  def update
    @vely = -SPEED if @window.button_down?(Gosu::KbUp)
    @vely = SPEED if @window.button_down?(Gosu::KbDown)
    @velx = -SPEED if @window.button_down?(Gosu::KbLeft)
    @velx = SPEED if @window.button_down?(Gosu::KbRight)

    @x += @velx
    @y += @vely
    @velx *= FRICTION
    @vely *= FRICTION

    if @x > @window.width - @radius
      @velx = 0
      @x = @window.width - @radius
    end
    if @x < @radius
      @velx = 0
      @x = @radius
    end
    if @y > @window.height - @radius
      @vely = 0
      @y = @window.height - @radius
    end

    if @y < @radius
      @vely = 0
      @y = @radius
    end
  end
end
