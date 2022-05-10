defmodule ExMon do
  alias ExMon.{Game, Player,}
  alias ExMon.Game.Status

  @computer_name "ENIAC"

  def create_player(name, random_move, average_move, heal_move) do
    Player.build(name, random_move, average_move, heal_move)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:electric_bolt, :confusion, :defragment)
    |> Game.start(player)

    Status.print_round_message()
  end

end
