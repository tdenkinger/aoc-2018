defmodule Day2Anomaly1Test do
  use ExUnit.Case

  test "calculates the checksum" do
    test_data = ~w(abcdef
                   bababc
                   abbcde
                   abcccd
                   aabcdd
                   abcdee
                   ababab)

    checksum = Day2Anomaly1.calculate_checksum(test_data)

    assert checksum == 12
  end
end

