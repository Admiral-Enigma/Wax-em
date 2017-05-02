require "gosu"
require_relative "game/objects/player"

class Waxem < Gosu::Window
  WIDTH = 1200
  HEIGHT = 900
  def initialize
    super(WIDTH, HEIGHT)
    self.caption = "Wax'em"
    @player = Player.new(self, 200, 200)
  end

  def draw
    @player.draw
  end

  def button_down(id)
  end

  def update
    @player.update
  end
end

window = Waxem.new
window.show
