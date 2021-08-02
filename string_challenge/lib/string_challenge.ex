defmodule StringChallenge do

  # str = "had we but world enough, and time"
  # second_str = "had we but bacon enough, and treacle"

  def split_in_two(str) do
    str |> String.split(",")
  end

  def char_string_list(str) do
    str |> String.codepoints
  end

  def char_integer_list(str) do
    str |> String.to_charlist
  end

  def reverse_string(str) do
    str |> String.reverse
  end

  def set_of_differences(str, second_str) do
    String.myers_difference(str, second_str)
  end
end
