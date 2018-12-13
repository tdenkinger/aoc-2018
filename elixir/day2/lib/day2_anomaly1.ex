defmodule Day2Anomaly1 do
  def run(file) do
    File.stream!(file)
    |> Stream.map(&String.trim_trailing/1)
    |> calculate_checksum
  end

  def calculate_checksum(codes) do
    codes
    |> Enum.reduce(%{twos: 0, threes: 0}, fn code, acc ->
      occurrences = get_unique_occurrences(code)
      update_counts(acc, occurrences)
    end)
    |> final_calculation
  end

  defp final_calculation(final_counts) do
	final_counts[:twos] * final_counts[:threes]
  end

  defp update_counts(acc, [2, 3]) do
    acc = Map.update!(acc, :twos, &(&1 + 1))
    Map.update!(acc, :threes, &(&1 + 1))
  end

  defp update_counts(acc, [2]), do: Map.update!(acc, :twos, &(&1 + 1))
  defp update_counts(acc, [3]), do: Map.update!(acc, :threes, &(&1 + 1))
  defp update_counts(acc, _), do: acc

  defp get_unique_occurrences(code) do
    code
    |> tokenize
    |> count_occurrences
    |> filter_unique_occurrences
  end

  defp filter_unique_occurrences(occurrences) do
    occurrences
    |> Enum.filter(fn {_k, v} -> v == 2 || v == 3 end)
    |> Enum.into(%{})
    |> Map.values
    |> Enum.uniq
    |> Enum.sort
  end

  defp count_occurrences(tokens) do
    tokens
    |> Enum.reduce(%{}, fn token, counts ->
      cond do
        Map.has_key?(counts, token) -> Map.update!(counts, token, &(&1 + 1))
        true -> Map.put(counts, token, 1)
      end
    end)
  end

  defp tokenize(word), do: String.graphemes(word)
end
