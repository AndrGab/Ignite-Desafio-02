defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.count(fn x -> rem(x, 2) == 1 end)
  end
end
