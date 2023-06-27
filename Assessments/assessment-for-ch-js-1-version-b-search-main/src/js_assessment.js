// Write a function, `longestSymmetricSubstring(string)`, that returns the
// longest substring that is the same forwards and in reverse (for example,
// "abba"). If two substrings are the same length, take the first one.
function longestSymmetricSubstring(string) {
    let subs = []
    let arr = string.split('')

    for (let i=0;i<arr.length-1;i++) {
        for (let j=i;j<arr.length;j++) {
            subs.push(arr.slice(i,j+1))
        }
    }

    let symmetric = []

    for (let i=0;i<subs.length;i++) {
        if (isPalindrome(subs[i])) symmetric.push(subs[i])
    }

    let longest = symmetric[0]

    for (let i=1;i<symmetric.length;i++) {
        if (symmetric[i].length > longest.length) longest = symmetric[i]
    }

    return longest.join('')
}

function isPalindrome(str) {
    for (let i=0;i<str.length;i++) {
        if (str[i] !== str[str.length-i-1]) return false
    }
    return true
}

// Write an `Array.prototype.myEach(callback)` method that invokes a callback
// for every element in an array and returns undefined. 
//
// **Do NOT use the built-in `Array.prototype.forEach` method in your 
// implementation.**

Array.prototype.myEach = function(callback){
    for (let i=0;i<this.length;i++) {
        callback(this[i])
    }
}


// Write an `Array.prototype.myMap(callback)` method, that takes a callback and 
// returns a new array containing the result of the callback for each element in 
// the array. Use the `Array.prototype.myEach` method you defined above. 
//
// **Do NOT call the built-in `Array.prototype.forEach` or `Array.prototype.map` 
// methods in your implementation.**
Array.prototype.myMap = function(callback) {
    let newArr = []

    this.myEach (el => {
        newArr.push(callback(el))
    })
    
    return newArr
}

// Write a function `pairMatch(array, callback)`. It should return all pairs
// of indices ([i, j]) for which `callback(array[i], array[j])` returns true.
//
// N.B.: Keep in mind that the order of the arguments to the callback may matter.
// E.g., callback = function(a, b) { return a < b }

function pairMatch(array, callback) {
    let newArr = []

    for (let i=0;i<array.length;i++) {
        for (let j=0;j<array.length;j++) {
            if (i !== j && callback(array[i],array[j])) newArr.push([i,j])
        }
    }
    return newArr
}


// Write a recursive function, `binarySearch(sortedArray, target)`, that returns
// the index of `target` in `sortedArray`, or -1 if it is not found. 
//
// **Do NOT use the built-in `Array.prototype.indexOf` or
// `Array.prototype.includes` methods in your implementation.**
//
// Here's a quick summary of the binary search algorithm:
//
// Start by looking at the middle item of the array. If it matches the target,
// return its index. Otherwise, recursively search either the left or the right
// half of the array until the target is found or the base case (empty array) is
// reached.

function binarySearch(sortedArray, target) {
    if (sortedArray.length === 0) return -1

    let midIdx = Math.floor(sortedArray.length/2)
    let midEl = sortedArray[midIdx]

    if (target === midEl) return midIdx

    let left = sortedArray.slice(0,midIdx)
    let right = sortedArray.slice(midIdx+1)

    if (target < midEl) {
        return binarySearch(left,target)
    } else{
        temp = binarySearch(right,target)
        if (temp === -1) {return -1}
        return temp + midIdx + 1
    }
}



// Write a `Function.prototype.myBind(context)` method. It should return a copy
// of the original function, where `this` is set to `context`. It should allow 
// arguments to the function to be passed both at bind-time and call-time.

Function.prototype.myBind = function(context,...bArgs){
    let origFunc = this;
    
    let boundFunc = function(...cArgs) {
        return origFunc.call(context,...bArgs,...cArgs);
    }
    return boundFunc;
}

// Write a function, `inherits(ChildClass, ParentClass)`. It should extend the
// methods of `ParentClass.prototype` to `ChildClass.prototype`. 
//
// **Do NOT use `Object.create`, `Object.assign`, `Object.setPrototypeOf`, or
// modify the `__proto__` property of any object directly.**
function inherits(ChildClass, ParentClass) {
    let Surrogate = new Function;
    Surrogate.prototype = ParentClass.prototype;
    ChildClass.prototype = new Surrogate;
    ChildClass.prototype.constructor = ChildClass;
}

// Write a function `myCurry(fn, object, numArgs)`, that curries the function.
// Remember that a curried function is invoked with one argument at a time. For
// example, the curried form of `sum(1, 2, 3)` would be written as
// `curriedSum(1)(2)(3)`. After `numArgs` have been passed in, invoke the
// original `fn` with the accumulated arguments, using `object` as the
// context.

function myCurry(fn, object, numArgs){
    let args = []

    return function curriedFunc(val) {
        args.push(val);

        if (numArgs === args.length) {
            return fn.bind(object)(...args)
        } else {
            return curriedFunc
        }
    }
}
