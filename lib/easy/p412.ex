defmodule Easy.P412 do
  @spec fizz_buzz(n :: integer) :: [String.t]
  def fizz_buzz(n) do
    Enum.map(1..n, &match/1)
  end

  defp match(val) when rem(val, 3) == 0 and rem(val, 5) == 0, do: "FizzBuzz"
  defp match(val) when rem(val, 3) == 0, do: "Fizz"
  defp match(val) when rem(val, 5) == 0, do: "Buzz"
  defp match(val), do: "#{val}"

end
