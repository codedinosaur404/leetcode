defmodule Leetcode do
  @moduledoc """
  Documentation for `Leetcode`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Leetcode.hello()
      :world

  """


  def is_valid(s) do
    arr = s |> String.graphemes()

    arr
    |> Enum.reduce([], &recurse/2)
  end

  defp recurse(")", acc), do: "("
  defp recurse("}", acc), do: "{"
  defp recurse("]", acc), do: "["
  defp recurse(val, acc), do: [acc | val]


end
