defmodule Day1Anomaly1 do
  def run(file) do
    File.stream!(file)
    |> Stream.map(&String.trim_trailing/1)
    |> get_final_frequency(0)
  end

  def get_final_frequency(adjustments, start) do
    Enum.reduce(
      adjustments,
      start,
      fn adjustment, acc -> acc = adjust(acc, adjustment) end
    )
  end

  def adjust(current_frequency, adjustment) do
    current_frequency + String.to_integer(adjustment)
  end
end
