require "gosu"

class Waxem < Gosu::Window
  WIDTH = 1200
  HEIGHT = 900
  def initialize
    super(WIDTH, HEIGHT)
    self.caption = "Wax'em"
  end

  def draw

  end

  def update

  end
end

window = Waxem.new
window.show
