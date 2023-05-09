defmodule LongestCommonPrefix do
  @spec longest_common_prefix(strs :: [String.t]) :: String.t
  def longest_common_prefix(strs) do
    strs
    |> Enum.map(&String.graphemes/1)
    |> IO.inspect()
    |> three_is_a_pattern([])
    |> Enum.join()
  end


  defp three_is_a_pattern([[h]], _acc), do: [h]
  defp three_is_a_pattern([[], [], [] | _], acc), do: acc
  defp three_is_a_pattern(arrays, acc) do
      arrays
      |> Enum.map(&head/1)
      |> Enum.dedup()
      |> recurse(arrays, acc)
  end

  defp recurse(_, [[]], acc), do: acc
  defp recurse(_, [[], _], acc), do: acc
  defp recurse([h], arrays, acc), do: arrays |> Enum.map(&tl/1) |> three_is_a_pattern(acc ++ [h])
  defp recurse(_more_than_one, _arrays, acc), do: acc

  defp head([]), do: ""
  defp head([h]), do: h
  defp head([h| _t]), do: h

end
