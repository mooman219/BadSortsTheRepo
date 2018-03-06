# Dependencies

Ruby 2.0 and up

# Running

ruby badQuantumSort.rb < file
ruby badQuantumSort.rb "[3,4,2,3,6]"

## Example

echo "[9,0,2,3]" | ruby badQuantumSort.rb

# Credits

Stephen Yingling

#Concept
Use a kindergarten-level understanding (or misunderstanding) of quantum super-positioning to perform sorting.

If you consider each number in the starting array to be a possible configuration of any spot in an array of the same size, then the problem with the unsorted array is just that upon observation the collapse of the state vector caused the solidification of super-positioned attributes to not be in ascending order.  Theoretically, the list is already sorted in at least one configuration, but our observations don't measure it.  So the solution is just to continue observing the list until one of the measurements results in a sorted list.  Of course, since this isn't actual quantum computing, we'll have to construct a model of a superpositioned vector based on the initial information provided and then manually crank out potential results for what the observed vector would look like.  

Disclaimer: I'm working off a spotty, 5 year rusty understanding of quantum mechanics that I may as well have read out of a comic book

# Pseudocode for badQuantumSort

Take in a list.
```
Pretend list is a vector of configurations (like spin on an electron, but more variability)

Create a quantum state vector from the initial list, assume all elements have an equal chance of occurring upon observation.

while observed list is not sorted:
  simulate observing the quantum list by "collapsing" the quantum state vector by just picking random numbers out of the superpositioned elements for each position in the array

return the observed list
```

#FAQ

##How is this different from BogoSort?
Functionally, it really isn't.  Conceptually it's surrounded by bad pop science.
