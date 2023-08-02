defmodule Medium.DecodeWays do

@spec num_decodings(s :: String.t) :: integer
  def num_decodings(s) do
   build_split(s)

  end

  defp build_split(s) do

      s |> Enum.chunk_every(3, String.length(s), 2)
  end

  defp letter_to_num('A'), do: 1
  defp letter_to_num('B'), do: 2
  defp letter_to_num('C'), do: 3
  defp letter_to_num('D'), do: 4
  defp letter_to_num('E'), do: 5
  defp letter_to_num('F'), do: 6
  defp letter_to_num('G'), do: 7
  defp letter_to_num('H'), do: 8
  defp letter_to_num('I'), do: 9
  defp letter_to_num('J'), do: 10
  defp letter_to_num('K'), do: 11
  defp letter_to_num('L'), do: 12
  defp letter_to_num('M'), do: 13
  defp letter_to_num('N'), do: 14
  defp letter_to_num('O'), do: 15
  defp letter_to_num('P'), do: 16
  defp letter_to_num('Q'), do: 17
  defp letter_to_num('R'), do: 18
  defp letter_to_num('S'), do: 19
  defp letter_to_num('T'), do: 20
  defp letter_to_num('U'), do: 21
  defp letter_to_num('V'), do: 22
  defp letter_to_num('W'), do: 23
  defp letter_to_num('X'), do: 24
  defp letter_to_num('Y'), do: 25
  defp letter_to_num('Z'), do: 26
  defp letter_to_num(_), do: 0


end
