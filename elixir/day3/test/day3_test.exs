defmodule Day3Test do
  use ExUnit.Case

  test "counts overlapping inches" do
    test_data = ["#1 @ 1,3: 4x4",
                 "#2 @ 3,1: 4x4",
                 "#3 @ 5,5: 2x2"]

    inches = Day3.find_overlapping_inches(test_data, %{})

    assert inches == 4
  end
end
