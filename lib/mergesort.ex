defmodule Algorithms do

    def merge([], []), do: []
    def merge([], ys), do: ys
    def merge(xs, []), do: xs
    def merge([x | xs], [y | ys]) when x < y, do: [x | merge(xs, [y|ys])]
    def merge([x | xs], [y | ys]), do: [y | merge([x | xs], ys)]

end
