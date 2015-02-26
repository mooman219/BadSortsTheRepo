# Pseudocode for Sleep sort.
The sleep sort requires elements with a radix.
```
For each *element* in the unsorted list
  Remove *element* from the unsorted list
  Create a new thread
    Sleep for the time defined by the *element*'s radix
    Push the *element back onto the list
  Start the thread
Wait for all threads to complete
```
