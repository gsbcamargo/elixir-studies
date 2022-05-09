defmodule ExMon do
  alias ExMon.Player

  def create_player(name, random_move, average_move, heal_move) do
    Player.build(name, random_move, average_move, heal_move)
  end

end
