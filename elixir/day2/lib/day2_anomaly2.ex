defmodule Day2Anomaly2 do
  def run(file) do
    File.stream!(file)
    |> Enum.map(&String.trim_trailing/1)
    |> get_common_characters
  end

  def get_common_characters(all_boxes) do
    state = %{distance: 0, box1: "", box2: ""}

    [box1, box2] = find_boxes(all_boxes, state)

    chars =
      (String.split(box1, "", trim: true) --
        (String.split(box1, "", trim: true) -- String.split(box2, "", trim: true)))

    Enum.join(chars, "")
  end

  defp find_boxes([box | boxes], state) do
    state =
    Enum.reduce(boxes, state, fn(box_to_check, state) ->
      compare_boxes(box, box_to_check, state)
    end)

    find_boxes(boxes, state)
  end

  defp find_boxes([], %{distance: _, box1: box1, box2: box2}) do
    [box1, box2]
  end

  defp compare_boxes(box, box_to_check, state) do
    distance = String.jaro_distance(box, box_to_check)

    state =
    if distance > state[:distance] do
      %{distance: distance, box1: box, box2: box_to_check}
    else
      state
    end

    state
  end
end
