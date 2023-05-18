defmodule ReplaceIteration do

  def while(pred, next, data) do
    case pred.(data) do
      true ->
        while(pred, next, next.(data))
      _ ->
        data
    end
  end

  def positive_non_zero?(i),
    do: i > 0

 

end
