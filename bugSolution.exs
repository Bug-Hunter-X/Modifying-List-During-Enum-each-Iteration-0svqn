```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.filter
new_list = Enum.filter(list, fn x -> x != 3 end)
IO.inspect(new_list)

# Solution 2: Iterating over a copy
list_copy = List.duplicate(list)
Enum.each(list_copy, fn x ->
  if x == 3 do
    List.delete_at(list_copy, x - 1)
  end
  IO.puts(x)
end)

# Solution 3: Using Enum.reduce
new_list = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
IO.inspect(Enum.reverse(new_list))
```