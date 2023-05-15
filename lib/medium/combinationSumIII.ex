defmodule Medium.CombinationSum do
  @spec combination_sum(candidates :: [integer], target :: integer) :: [[integer]]
  def combination_sum(candidates, target) do

    available_nodes = getNodes(target)

  end

  defp getNodes(target) when target < 9, do: Enum.to_list(1..target)
  defp getNodes(_), do: Enum.to_list(1..9)

  defp candidate(num_of_nums, possible_numbers, acc) do
    possible_numbers
  end

  def recurse([], _, acc), do: acc
  def recurse([a], _, acc), do: acc
  def recurse([h, m | t], limit, acc) do
    new_arr = [h | t |> Enum.take(limit - 1)]

    recurse(new_arr, limit, [new_arr | acc])
  end

end
