defmodule Day1Anomaly2Test do
  use ExUnit.Case

  test "recogizes that a frequency has been repeated" do
    start = 0
    adjustments = ["+3", "+3", "+4", "-2", "-4"]

    repeated_freq = Day1Anomaly2.get_first_repeated_frequency(adjustments, start)

    assert repeated_freq == 10
  end
end
