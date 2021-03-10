## ListFilter
Returns the count of odd numbers in the list 

** Desafio 02 - Ignite/Elixir by RocketSeat :rocket: **

```elixir
defmodule ListFilter do
  def call(list) do
    list
    |> Enum.flat_map(fn string ->
      case Integer.parse(string) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> oddnum()
  end

  defp oddnum(numlist) do
    numlist
    |> Enum.count(fn x -> rem(x, 2) == 1 end)
  end
end
```