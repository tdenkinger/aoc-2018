defmodule Day1Anomaly2 do
  def get_repeated_frequency(adjustments, start) do
    state = %{current_freq: start, seen: MapSet.new([start]), all_adjustments: adjustments}

    get_first_repeated_frequency(adjustments, state)
  end

  def get_first_repeated_frequency([adjustment | t], state) do
    new_freq = adjust(Map.fetch(state, :current_freq), adjustment)
    # If we've seen it, return it
    # If we haven't seen it, add it to the seen mapset

    # get_first_repeated_frequency(t, state)
  end

  def get_first_repeated_frequency([], state) do
    all_adjustments = Map.fetch(state, :all_adjustments)

    Map.fetch(state, :seen)
    # get_first_repeated_frequency(Map.fetch(state, :all_adjustments), state)
  end

  def adjust(current_frequency, adjustment) do
    current_frequency + String.to_integer(adjustment)
  end
end
