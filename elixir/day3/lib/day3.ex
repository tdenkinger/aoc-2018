defmodule Day3 do
  def find_overlapping_inches([measurement | _t], _state) do
    x = get_patch(measurement)
    IO.inspect x
  end

  defp get_patch(measurement) do
    left_top = String.split(measurement) |> get_left_top
    x_y      = String.split(measurement) |> get_x_y

    [left_top, x_y]
  end

  defp get_left_top([_, _, left_top, _]) do
    left_top
    |> String.replace_trailing(":", "")
    |> String.split(",")
    |> Enum.map(fn(str) -> String.to_integer(str) end)
    |> List.to_tuple
  end

  defp get_x_y([_, _, _, x_y]) do
    x_y
    |> String.split("x")
    |> Enum.map(fn(str) -> String.to_integer(str) end)
    |> List.to_tuple
  end
end
