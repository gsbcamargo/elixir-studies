defmodule Lists do

  # challenges from the course Pattern Matching section

  def func(_t = { a, b }) do
    IO.puts("a = #{a}, b = #{b}, is_tuple{t}")
  end

  def swap_values({a, b}), do: {b, a}

  def same(a, a), do: true
  def same(_, _), do: false

  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def double([]), do: []
  def double([head | tail]), do: [head * 2 | double(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def sum_pairs([]), do: 0
  def sum_pairs([head1, head2 | tail]), do: [head1 + head2 | sum_pairs(tail)]

  def even_length?([]), do: true
  def even_length?([_head| tail]), do: !even_length?(tail)
  # end of the Pattern Matching challenges
end
