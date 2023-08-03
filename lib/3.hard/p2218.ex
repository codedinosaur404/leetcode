defmodule Hard.P2218 do

  @spec max_value_of_coins(piles :: [[integer]], k :: integer) :: integer
  def max_value_of_coins(_piles, 0), do: 0
  def max_value_of_coins(piles, k) do

    map_of_prefix = piles |> from_list(k)
    #|> IO.inspect() 2-d array into map



  end


    ###
    # Build map of prefix arrays to find max
    ###
   def from_list(list, k) when is_list(list), do: do_from_list(list, k)

   defp do_from_list(list, k, map \\ %{}, index \\ 0)
   defp do_from_list(_, 0, _, _), do: 0
   defp do_from_list([], _k, map, _index), do: map
   defp do_from_list([_h|_t], k, map, index) when k == index, do: map
   defp do_from_list([h|t], k, map, index) do
       map = Map.put(map, index, do_from_list(h,k))
       do_from_list(t, k, map, index + 1)
   end
   defp do_from_list(other, _, _, _), do: other

   defp prefix_sum(arr), do: arr |> Enum.scan(&(&1 + &2))

   def to_list(matrix) when is_map(matrix) do
     do_to_list(matrix)
   end

   defp do_to_list(matrix) when is_map(matrix) do
     for {_index, value} <- matrix,
         into: [],
         do: do_to_list(value)
   end
   defp do_to_list(other), do: other
end
