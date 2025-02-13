# Elixir Bug: Modifying List During Enum.each

This repository demonstrates a common error in Elixir: modifying a list while iterating over it using `Enum.each`.  The code attempts to remove the element `3` from the list while iterating, causing an index error because the list's size changes during the iteration.

The `bug.exs` file contains the buggy code. The `bugSolution.exs` file shows how to correctly handle this situation.

**Solutions:**

1.  Use `Enum.filter` to create a new list without the unwanted element.
2.  Iterate over a copy of the list.
3.  Use `Enum.reduce` to build a new list.