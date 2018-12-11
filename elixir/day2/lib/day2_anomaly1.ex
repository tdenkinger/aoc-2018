defmodule Day2Anomaly1 do
  defp filter_occurrences(occurrences) do
    occurrences
    |> Enum.filter(fn {_k, v} -> v == 2 || v == 3 end)
  end

  defp count_occurrences(tokens) do
    tokens
    |> Enum.reduce(%{}, fn token, counts ->
      cond do
        Map.has_key?(counts, token) -> Map.update!(counts, token, &(&1 + 1))
        true                        -> Map.put(counts, token, 1)
      end
    end)
  end

  defp tokenize(word), do: String.graphemes(word)

end
