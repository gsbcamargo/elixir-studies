defmodule LineCounter do
  def line_counter do
    File.stream!("C:/workspace/elixir/line_counter/lib/line_counter.ex")
    |> Stream.map(&String.trim/1)
    |> Stream.with_index
    |> Stream.map(fn {line, index} -> IO.puts("#{index + 1} #{line}") end)
    |> Stream.run()
    # random comment
  end
end
