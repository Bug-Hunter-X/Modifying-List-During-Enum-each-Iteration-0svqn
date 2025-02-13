```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  if x == 3 do
    # This will cause an error because the list is being modified during enumeration
    List.delete_at(list, x - 1)
  end
  IO.puts(x)
end)
```