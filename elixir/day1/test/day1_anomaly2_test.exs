defmodule Day1Anomaly2Test do
  use ExUnit.Case

  test "x" do
    start = 0
    adjustments = []

    state = %{start: start, seen: MapSet.new([start]), all_adjustments: adjustments}

    IO.inspect(Day1Anomaly2.get_first_repeated_frequency(adjustments, state))
  end

  # test "finds the first repeat of a frequency" do
  #   adjustments = ["+1", "-1"]
  #   start = 0

  #   repeated_frequency = Day1Anomaly2.get_repeated_frequency(adjustments, start)

  #   assert repeated_frequency == 0
  # end
end
