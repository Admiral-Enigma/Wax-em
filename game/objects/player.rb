
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
    @dir = 0
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def move(dir)
    case dir
    when 0
      @vely = -SPEED
      @dir = 0
    when 1
      @vely = SPEED
      @dir = 1
    when 2
      @velx = -SPEED
      @dir = 2
    when 3
      @velx = SPEED
      @dir = 3
    end
  end

  def update
    move(0) if @window.button_down?(Gosu::KbUp)
    move(1) if @window.button_down?(Gosu::KbDown)
    move(2) if @window.button_down?(Gosu::KbLeft)
    move(3) if @window.button_down?(Gosu::KbRight)

    @x += @velx
    @y += @vely
    @velx *= FRICTION
    @vely *= FRICTION

    if @x > @window.width - 64
      @velx = 0
      @x = @window.width - 64
    end
    if @x < @radius
      @velx = 0
      @x = @radius
    end
    if @y > @window.height - 64
      @vely = 0
      @y = @window.height - 64
    end

    if @y < @radius
      @vely = 0
      @y = @radius
    end
  end
end
