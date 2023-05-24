defmodule Easy.ReverseWords do

  def reverse_words(s) do
    s
    |> String.split()
    |> Enum.map(&String.reverse/1)
    |> Enum.join(" ")
  end

end
