defmodule Easy.P345 do
  @spec reverse_vowels(s :: String.t) :: String.t
  def reverse_vowels(s) do
    code_points = s
    |> String.codepoints
    #|> IO.inspect(label: "code points")

    vowels = code_points
      |> Enum.filter(&is_vowel?/1)
      |> Enum.reverse()
      #|> IO.inspect(label: "vowels")

    recurse([], code_points, vowels)
      |> Enum.reverse()
      |> to_string()
  end

  def is_vowel?(letter), do: Enum.member?(["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"], letter)

  def recurse(acc, [], []), do: acc
  def recurse(acc, [h], []), do: [h | acc]
  def recurse(acc, [], [h]), do: [h | acc]
  def recurse(acc, [h | t], []), do: recurse([h|t] ++ acc], [], [])
  def recurse(acc, [h| t], [v]), do: recurse([v|acc], [h|t], [])
  def recurse(acc, [h | t], [hv | tv]) do
    if is_vowel?(h) do
      recurse([hv | acc ], t, tv)
    else
      recurse([h | acc], t, [hv | tv])
    end
  end
end
