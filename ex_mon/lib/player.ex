defmodule ExMon.Player do
  required_keys = [:life, :name, :random_move, :average_move, :heal_move]

  @enforce_keys required_keys
  defstruct required_keys

  def build(name, random_move, average_move, heal_move) do
    %ExMon.Player{
      name: name,
      random_move: random_move,
      average_move: average_move,
      heal_move: heal_move,
      life: 100
    }
  end

end
