defmodule Hard.P2218 do

  @spec max_value_of_coins(piles :: [[integer]], k :: integer) :: integer
  def max_value_of_coins(piles, k) do

    piles
    |> from_list()
    |> IO.inspect()
    #|> Enum.scan(&(&1 + &2))

  end


   def from_list(list) when is_list(list) do
      do_from_list(list)
    end

    defp do_from_list(list, map \\ %{}, index \\ 0)
    defp do_from_list([], map, _index), do: map
    defp do_from_list([h|t], map, index) do
      map = Map.put(map, index, do_from_list(h))
      do_from_list(t, map, index + 1)
    end
    defp do_from_list(other, _, _), do: other

end
