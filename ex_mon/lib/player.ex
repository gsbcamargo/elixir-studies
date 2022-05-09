defmodule ExMon.Player do
  @required_keys [:life, :name, :random_move, :average_move, :heal_move]
  @max_life 100 # module variables

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, random_move, average_move, heal_move) do
    %ExMon.Player{
      average_move: average_move,
      heal_move: heal_move,
      life: @max_life,
      name: name,
      random_move: random_move
    }
  end

end
