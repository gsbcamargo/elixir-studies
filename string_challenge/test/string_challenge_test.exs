defmodule StringChallengeTest do
  use ExUnit.Case
  doctest StringChallenge

  test "greets the world" do
    assert StringChallenge.hello() == :world
  end
end
