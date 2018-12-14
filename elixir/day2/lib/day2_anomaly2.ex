defmodule Day2Anomaly2 do
  def find_boxes(box_list) do
    box_list
    |> Enum.reduce({0, "", ""}, fn box, acc ->
      # compare this box to all the boxes in full_list
      # if the jaro distance of a comparison is lower than the current value
      # put it in the 3-tuple
    end)
  end
end
