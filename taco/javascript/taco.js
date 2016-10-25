function taco(cat) {
  var list = cat;

  while (notSorted(list)) {
    list = shuffle(list);
  }

  console.log('Hurray! You did it!');
  console.log(list);
}

function notSorted(yet) {
  // A list is 'sorted' if the list is of integers and they are ordered from smallest to largest
  for (var i = 0; i < yet.length - 1; i++) {
    if (yet[i] > yet[i + 1]) {
      console.log('Still not sorted...');
      return true;
    }
  }

  return false;
}

function shuffle(it) {
  var list = it.slice(0); // Make a copy of the list since splice is destructive
  // Remove a random element from the list and add it back in a random position
  list.splice(getRandomNumberBetween(0, list.length - 1), 0, list.splice(getRandomNumberBetween(0, list.length - 1), 1)[0]);
  return list;
}

function getRandomNumberBetween(min, max) {
  return Math.floor(Math.random() * (max - min + 1)) + min;
}

taco([5,7,2,9,1,4]);
