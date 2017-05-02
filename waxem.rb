require "gosu"
require_relative "game/objects/player"
require_relative "game/objects/spyd"
class Waxem < Gosu::Window
  WIDTH = 1200
  HEIGHT = 900
  def initialize
    super(WIDTH, HEIGHT)
    self.caption = "Wax'em"
    @player = Player.new(self, 200, 200)
    @test_spyd = Spyd.new(264, 264, 0)
  end

  def draw
    @player.draw
    @test_spyd.draw
  end

  def button_down(id)
  end

  def update
    @player.update
  end
end

window = Waxem.new
window.show
