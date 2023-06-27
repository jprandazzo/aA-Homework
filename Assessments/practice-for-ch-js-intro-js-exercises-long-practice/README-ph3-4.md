# Intro JavaScript Exercises, Phases 3-4

In Phases 3-4, you will solve problems using iteration (Phase 3) and recursion
(Phase 4).

## Phase 3: Iteration

Let's do a few slightly more involved problems with arrays. These should be
pretty familiar.

### Instructions

Write the following functions:

- `Array.prototype.bubbleSort`  
  `bubbleSort` should receive an array and return a sorted array by implementing
  the [`bubble sort`][bubblesort] sorting algorithm.
- `String.prototype.substrings`  
  `substrings` should receive a string and return an array of all substrings.

### Recap

These implementations should be almost identical to the ones you created in
Ruby, with some differences in what you're allowed to use. There is no parallel
assignment in JavaScript like you saw in Ruby, but you do get the [destructuring
assignment][destructuring] syntax. In addition to the `+=` operator you had in
Ruby, you now also have the `++` [increment operator][increment] in JavaScript.

[bubblesort]: https://en.wikipedia.org/wiki/Bubble_sort
[destructuring]:
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Destructuring_assignment
[increment]:
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Arithmetic_Operators#Increment_()

## Phase 4: Recursion

Thought you were done with recursion, eh? Never! Not only is recursion an
important method for breaking down problems, but it also forms the basis of many
of the interview questions you may be asked while job hunting. Let's get some
more practice with recursion in JavaScript!

### Instructions

Write the following functions using recursion:

- `range(start, end)`  
  `range` should receive a start and end value, and return an array from start
  up to end.
- `sumRec(arr)`  
  `sumRec` should receive an array of numbers and recursively sum them.
- `exponent(base, exp)`  
  `exponent` should receive a base and exponent, and return the base raised to
  the power of the exponent (`base ^ exp`).
  - Write two versions:

  ```plaintext
  // Note: this is math, not Ruby or JavaScript!

  // version 1
  exp(b, 0) = 1
  exp(b, n) = b * exp(b, n - 1)

  // version 2
  exp(b, 0) = 1
  exp(b, 1) = b
  exp(b, n) = exp(b, n / 2) ** 2             [for even n]
  exp(b, n) = b * (exp(b, (n - 1) / 2) ** 2) [for odd n]
  ```

- `fibonacci(n)`  
  `fibonacci` should receive an integer (`n`) and return the first `n` Fibonacci
  numbers.
- `deepDup(arr)`  
  `deepDup` should return the deep dup of an `Array`!

---

#### 💡 Aside: Type-checking in JavaScript

Type-checking in JS can get very strange at times. There's a [`typeof`
operator][typeof] and an [`instanceof` operator][instanceof]. For `deepDup`, you
will probably want to use the `instanceof` operator.

[instanceof]:
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/instanceof
[typeof]:
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof

---

- `bsearch(arr, target)`  
  `bsearch` should receive a sorted array and return the index of the target or
  `-1` if the target is not found.

---

#### 💡 Another aside: Why `-1`?

In case you are wondering, returning `-1` is a common practice when returning
the index of an element that does not exist. The reasoning behind this is to
return the same type (`-1` is also a number) as if the element were found; that
way you can still bracket into the array but will get `undefined` back. **Though
this was not the case with Ruby,** you will likely see this in other programming
languages. Try this on your own if you are curious.

---

- `mergesort(arr)`  
  `mergesort` should receive an array and return a sorted copy of the array by
  implementing the [`merge sort`][merge-sort] sorting algorithm.
- `subsets(arr)`  
  `subsets` should receive an array and return an array containing all the
  subsets of the original array.

### Recap

As you may have noticed, recursion works much the same in JavaScript as in Ruby.
Yay!

[merge-sort]: https://en.wikipedia.org/wiki/Merge_sort

Great job! Now head on to Phase 5!
