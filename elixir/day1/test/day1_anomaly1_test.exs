defmodule Day1Anomaly1Test do
  use ExUnit.Case

  test "counts up and down" do
    final_frequency = Day1Anomaly1.adjust(["+1", "-1"])

    assert final_frequency == 0
  end
end
