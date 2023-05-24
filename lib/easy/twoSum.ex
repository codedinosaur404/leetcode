defmodule Easy.TwoSum do

  def two_sum(nums, target) do
    reduce(nums, target, 0, %{})
  end

  def reduce([], _, _, _), do: [-1,-1]
  def reduce([n | rest], target, i, map) do
    j = Map.get(map, target-n)
    if j != nil do
        [i, j]
    else
        reduce(rest, target, i+1, Map.put(map, n, i))
    end
  end

end
