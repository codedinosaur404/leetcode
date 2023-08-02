defmodule Medium.P811 do


  def subdomain_visits(cpdomains) do
    cpdomains
    |> Enum.map(&String.split(&1,",", trim: true))
    |> Enum.reduce(%{},fn [val], acc ->
      [count, str] = String.split(val, " ", parts: 2)

      remaining_token([str])
      |> Enum.dedup()
      |> Enum.reduce(acc, fn str, acc -> merge(acc, %{str =>  String.to_integer(count)}) end)
    end)
    |> Enum.map(fn {k, v} -> "#{v} #{k}" end)

  end

  defp remaining_token([v]) do
    for n <- 1..3 do
      v |> String.split(".", parts: n) |> tail()
    end
  end

  defp tail([h]), do: h
  defp tail([_ | t]), do: tail(t)

  defp merge(acc, map2) do
    Map.merge(acc, map2, fn _k, v1, v2 ->
      v1 + v2
    end)
  end

end
