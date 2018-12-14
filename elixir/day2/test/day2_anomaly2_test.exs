defmodule Day2Anomaly2Test do
  use ExUnit.Case

  test "calculates the checksum" do
    test_data = ~w(abcde
                   fghij
                   klmno
                   pqrst
                   fguij
                   axcye
                   wvxyz)

    two_boxes = Day2Anomaly2.find_boxes(test_data)

    assert two_boxes = ["fghij", "fguij"]
  end
end
