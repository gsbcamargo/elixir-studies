defmodule ExMon do
  alias ExMon.{Game, Player,}
  alias ExMon.Game.{Actions, Status}

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

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
      :heal_move -> "Curou."
      _move -> "Atacou."
    end
  end

end
