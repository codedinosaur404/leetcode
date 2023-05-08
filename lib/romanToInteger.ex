defmodule RomanToInteger do

def roman_to_int(s) do
    s
    |> String.graphemes()
    |> Enum.map(&symbolToInt/1)
    |> reduce(0)
  end

  defp symbolToInt("I"), do: 1
  defp symbolToInt("V"), do: 5
  defp symbolToInt("X"), do: 10
  defp symbolToInt("L"), do: 50
  defp symbolToInt("C"), do: 100
  defp symbolToInt("D"), do: 500
  defp symbolToInt("M"), do: 1000

  defp reduce([], acc), do: acc
  defp reduce([h], acc), do: acc + h
  defp reduce([h, m | t], acc) when h > m, do: reduce([m | t], acc + h)
  defp reduce([h, m | t], acc) when h < m, do: reduce(t, acc + (m-h))
  defp reduce([h, m| t], acc) when h == m, do: reduce([m|t], acc + h)

end
