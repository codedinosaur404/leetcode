defmodule Easy.ValidParentheses do

 def is_valid(s) do
    s |> String.split("", trim: true) |> check([])
  end

  def check([], []), do: true
  def check(["(" | s_tail], queue), do: check(s_tail, ["(" | queue])
  def check(["[" | s_tail], queue), do: check(s_tail, ["[" | queue])
  def check(["{" | s_tail], queue), do: check(s_tail, ["{" | queue])
  def check([")" | s_tail], ["(" | q_tail]), do: check(s_tail, q_tail)
  def check(["]" | s_tail], ["[" | q_tail]), do: check(s_tail, q_tail)
  def check(["}" | s_tail], ["{" | q_tail]), do: check(s_tail, q_tail)
  def check(_, _), do: false

end
