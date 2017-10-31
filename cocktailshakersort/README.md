# Cocktail Shaker Sort

# About the Sort

- Cocktail shaker sort,also known as bidirectional bubble sort, cocktail sort, shaker sort (which can also refer to a variant of selection sort), ripple sort, shuffle sort, or shuttle sort, is a variation of bubble sort that is both a stable sorting algorithm and a comparison sort. The algorithm differs from a bubble sort in that it sorts in both directions on each pass through the list. This sorting algorithm is only marginally more difficult to implement than a bubble sort, and solves the problem of turtles in bubble sorts. It provides only marginal performance improvements, and does not improve asymptotic performance; like the bubble sort, it is not of practical interest (insertion sort is preferred for simple sorts), though it finds some use in education.

# Pseudocode from [Wikipedia](https://en.wikipedia.org/wiki/Cocktail_shaker_sort)

```
procedure cocktailShakerSort( A : list of sortable items ) defined as:
  do
    swapped := false
    for each i in 0 to length( A ) - 2 do:
      if A[ i ] > A[ i + 1 ] then // test whether the two elements are in the wrong order
        swap( A[ i ], A[ i + 1 ] ) // let the two elements change places
        swapped := true
      end if
    end for
    if not swapped then
      // we can exit the outer loop here if no swaps occurred.
      break do-while loop
    end if
    swapped := false
    for each i in length( A ) - 2 to 0 do:
      if A[ i ] > A[ i + 1 ] then
        swap( A[ i ], A[ i + 1 ] )
        swapped := true
      end if
    end for
  while swapped // if no elements have been swapped, then the list is sorted
end procedure

```

# Credits

Dan Sweetman @danswtmn