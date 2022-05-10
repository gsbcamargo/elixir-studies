defmodule ExMon.Player do
  @required_keys [:life, :name, :moves]
  @max_life 100 # module variables

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, random_move, average_move, heal_move) do
    %ExMon.Player{
      moves: %{
        average_move: average_move,
        heal_move: heal_move,
        random_move: random_move
        },
      life: @max_life,
      name: name,

    }
  end

end
