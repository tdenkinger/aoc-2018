defmodule Day1Anomaly2 do
  def get_first_repeated_frequency(adjustments, start) do
    Stream.cycle(adjustments)
    |> Enum.reduce_while([start], fn adjustment, seen ->
      new_freq = adjust(List.first(seen), adjustment)

      if frequency_seen?(seen, new_freq),
        do: {:halt, new_freq},
        else: {:cont, [new_freq | seen]}
    end)
  end

  def frequency_seen?(seen, new_freq) do
    Enum.member?(seen, new_freq)
  end

  def adjust(current_frequency, adjustment) do
    current_frequency + String.to_integer(adjustment)
  end
end
