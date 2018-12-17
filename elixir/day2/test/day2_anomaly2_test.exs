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

    shared_characters = Day2Anomaly2.get_common_characters(test_data)

    assert shared_characters == "fgij"
  end
end
