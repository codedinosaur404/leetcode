defmodule Medium.ReverseInteger do

  @max Integer.pow(2, 31) - 1
  @min Integer.pow(-2, 31)

  def reverse(x) do
     val = x
      |> Integer.to_string()

      if String.starts_with?(val ,"-") do
        new = val
        |> String.split("")
        |> tl()
        |> tl()
        |> Enum.reverse()
        |> Enum.join()
        "-#{new}"|> String.to_integer() |> range_check()
      else
        val
        |> String.split("")
        |> Enum.reverse()
        |> Enum.join()
        |> String.to_integer()
        |> range_check()
      end
  end

  def range_check(val) when val > @max, do: 0
  def range_check(val) when val < @min, do: 0
  def range_check(val), do: val

end
