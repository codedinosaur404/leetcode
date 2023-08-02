defmodule Medium.CombinationSum do
  @spec combination_sum(candidates :: [integer], target :: integer) :: [[integer]]
  def combination_sum(candidates, target) do
    fake_array = getNodes(target)
    |> Enum.with_index()
    |> Map.new(fn {value, index} -> {index, value} end)

    for {i, val} <- fake_array  do
      IO.inspect(i, label: "left")
      right = fake_array[ map_size(fake_array) - i - 1 ]
      IO.inspect(right, label: "right")
    end

  end

  defp getNodes(target) when target < 9, do: Enum.to_list(1..target)
  defp getNodes(_), do: Enum.to_list(1..9)



end
