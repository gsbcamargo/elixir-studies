defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do

    test "when a valid file is provided, a converted list is returned" do
      expected_value = {:ok, [1, 2, :fizz, 4, :buzz, :fizz, 7, 8, :fizz, :buzz, 11, :fizz, 13, 14, :fizzbuzz, 16, 17, :fizz, 19, :buzz, :fizz, 22, 23, :fizz, :buzz, 26, :fizz, 28, 29, :fizzbuzz]}
      assert FizzBuzz.build("assets/numbers.txt") == expected_value
    end

    test "when a invalid file is provided, an error is returned" do
      expected_value = {:error, "Error reading the file: enoent"}
      assert FizzBuzz.build("assets/invalid_file.txt") == expected_value
    end

  end
end
