# Intro JavaScript Exercises

Let's code some JavaScript!

## Learning goals

By the end of this practice, you should be able to

- Write the same types of functions you were able to write in Ruby
- Pass functions as arguments to other functions and call them as callbacks
- Explain how closures work
- Explain how JavaScript's prototypal inheritance works
- Monkey-patch new methods onto a class in JavaScript

**N.B.:** Remember that JavaScript conventionally uses `camelCase` for variable
names. And don't forget your semicolons!

## Phase 0: Setup

Clone the starter repo from the `Download Project` button below. For each phase
below, you will fill in the corresponding file. The __index.html__ file already
has each of the __.js__ script files included, so you need not worry about
editing it. Simply `open index.html` and your code should be available from the
Chrome Console (`CMD-OPTION-i` to open).

## Phase 1: Arrays

Let's create a few (hopefully familiar) functions. These should give you some
experience iterating over and mutating arrays.

### Instructions

Monkey-patch the following methods to the `Array` class. Remember, you want to
use `prototype` here.

**Note:** JavaScript identifies instance methods by inserting `.prototype`
between the class name and the method name. So, e.g., `Array#uniq` in Ruby will
be `Array.prototype.uniq` in JavaScript.

- `Array.prototype.uniq`  
  `uniq` should return a new array containing each individual element of the
  original array only once (creating all unique elements).
  - Keep elements in the order in which they first appear in the original array.
  - Do not mutate the original array.
  - `[1,2,2,3,3,3].uniq() // => [1,2,3]`
- `Array.prototype.twoSum`  
  `twoSum` should return an array of position pairs where the elements sum to
  zero.
  - Do not mutate the original array.
  - `[-1, 0, 2, -2, 1].twoSum() // => [[0,4] [2,3]]`
- `Array.prototype.transpose`  
  `transpose` should return the [transpose] of a two-dimensional array.
  - Do not mutate the original array.
  - `[[0, 1, 2], [3, 4, 5], [6, 7, 8]].transpose() // => [[0,3,6], [1,4,7],
    [2,5,8]]`

### Recap

That was super fun, right?

[transpose]: https://en.wikipedia.org/wiki/Transpose

## Phase 2: Enumerable

JavaScript enumerates over arrays differently than Ruby; rather than taking a
block, they take a _callback_ function, which is invoked for each element of the
array. Take a look at the [MDN Array Documentation][mdn-array] if it is unclear
how these methods are supposed to work.

### Instructions

Again, monkey-patch the following methods to the `Array` class using the swell
new language you've been learning.

- `Array.prototype.myEach(callback)`  
  `myEach` should receive a callback function and execute the callback for each
  element in the array, just like `Array.prototype.forEach`.
  - Note that JavaScript's `forEach` function has no return value (i.e., it
    returns `undefined`).
- `Array.prototype.myMap(callback)`  
  `myMap` should receive a callback function and return a new array of the
  results of calling the callback function on each element of the array.
  - Use your `myEach` and a closure.
- `Array.prototype.myReduce(callback[, initialValue])`  
  **N.B.:** Putting arguments inside square brackets--like `[,
  initialValue]`--is the conventional way for documentation to express that the
  enclosed arguments are optional inputs. Your function definition will **NOT**
  include these square brackets.  

  Like Ruby's `Array#inject`, `myReduce` should receive a callback function and
  optional initial value. It should return an accumulator by applying the
  callback function to each element and the result of the last invocation of the
  callback (or the initial value, if supplied).

  - Default `initialValue` to the first element of the array if no value is
    provided.
  - Examples:

    ```js
    // without initialValue
    [1, 2, 3].myReduce(function(acc, el) {
      return acc + el;
    }); // => 6

    // with initialValue
    [1, 2, 3].myReduce(function(acc, el) {
      return acc + el;
    }, 25); // => 31
    ```

  - Again, use your `myEach`.

### Recap

Closures and callbacks are part of the foundation of JavaScript and provide you
with a lot of flexibility and modularity in your code. Thanks to closures you
can create higher order functions and "hide" private variables.

[mdn-array]:
  https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array

Done already? Time for Phase 3!
