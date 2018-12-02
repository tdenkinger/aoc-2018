defmodule Day1Anomaly1Test do
  use ExUnit.Case

  test "adjusts frequency" do
    starting_freq = 0
    adjustments = ["+11", "-1", "-2", "+1"]

    final_frequency = Day1Anomaly1.get_final_frequency(adjustments, starting_frequency)

    assert final_frequency == 9
  end

  test "adjusts frequency starting from non-zero" do
    starting_freq = 1
    adjustments = ["+11", "-1", "-2", "+1"]

    final_frequency = Day1Anomaly1.get_final_frequency(adjustments, starting_frequency)

    assert final_frequency == 10
  end
end
