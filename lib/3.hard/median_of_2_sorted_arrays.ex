defmodule Solution do

  @spec find_median_sorted_arrays(nums1 :: [integer], nums2 :: [integer]) :: float
  def find_median_sorted_arrays(nums1, nums2) do
    merged = merge(nums1, nums2)
    find_median(merged)
  end

    def merge([], []), do: []
    def merge([], ys), do: ys
    def merge(xs, []), do: xs
    def merge([x | xs], [y | ys]) when x < y, do: [x | merge(xs, [y|ys])]
    def merge([x | xs], [y | ys]), do: [y | merge([x | xs], ys)]

    def find_median([]), do: nil
    def find_median([x]), do: x
    def find_median(list) do
        mid = div(length(list), 2)
        if rem(length(list), 2) == 0 do
            (Enum.at(list, mid - 1) + Enum.at(list, mid)) / 2
        else
            Enum.at(list, mid)
        end
    end

end
