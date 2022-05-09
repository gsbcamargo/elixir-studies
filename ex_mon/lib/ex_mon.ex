defmodule ExMon do
  alias ExMon.Player
  alias ExMon.Game

  def create_player(name, random_move, average_move, heal_move) do
    Player.build(name, random_move, average_move, heal_move)
  end

  def start_game(player) do
    computer = create_player("ENIAC", :electric_bolt, :confusion, :defragment)
    Game.start(computer, player)
  end
end
