defmodule Easy.LengthOfLastWord do

  def length_of_last_word(s) do
    s
    |> String.split(" ", trim: true)
    |> Enum.reverse()
    |> hd()
    |> String.graphemes()
    |> Enum.count()
  end
end
