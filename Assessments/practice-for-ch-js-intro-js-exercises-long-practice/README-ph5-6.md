# Intro JavaScript Exercises, Phases 5-6

In Phases 5-6, you will explore classes and Object-Oriented Programming in
JavaScript.

## Phase 5: Create a `Cat` class

ES5 class syntax is very different from Ruby. Here you will be creating a `Cat`
class via a constructor function and adding instance variables by building out
`Cat.prototype`. This syntax may seem very strange, but it fits quite nicely
into the "Everything is an object" model.

### Instructions

- Define a `Cat` class.
  - The constructor function should take a `name` and `owner`, and store them in
    the instance.
- Write a `Cat.prototype.cuteStatement` method that returns  
  `"[owner] loves [name]"`
  - Define `cuteStatement` on the prototype.
- Prototypes example:
  - Create several `Cat` instances, test out their `cuteStatement` method.
  - Reassign the `Cat.prototype.cuteStatement` method with a function that
    returns `"Everyone loves [name]!"`.
  - Invoke the `cuteStatement` method on your old cats; the reassigned method
    should be invoked.
- Add a `meow` method to the `Cat` class. You can now call `meow` on your
  previously constructed `Cat` instances.
- Take one of your cats and set the `meow` property **on the instance**
  (`cat1.meow = function () { ... }`. Call `meow` on this `Cat` instance; call
  `meow` on any other cat. The other cats should continue to use the `prototype`
  method.

### Recap

You have used the `new` keyword and added methods to the prototype. You have
explored how class instances are really just objects that are able to behave
like a class by maintaining a reference to their prototype. Note that it is
unusual to add a method directly to an instance, but is important to note that
methods defined on the instance override those defined on the prototype.

## Phase 6: Students and courses

Use the Object-Oriented Programming in JS reading for reference as you work on
this exercise!

### Instructions

Write classes to model students and the courses they can enroll in.

#### `Student` class

- `Student`  
  The `Student` constructor function should take a first and last name, and set
  both of those as attributes. It should also set a `courses` attribute to an
  empty array.
- `Student.prototype.name`  
  `name` should return the concatenation of the student's first and last name.
- `Student.prototype.enroll`  
  `enroll` should receive a `Course` object, add it to the student's list of
  courses, and update the `Course`'s list of enrolled students.
  - `enroll` should ignore attempts to re-enroll a student in a course.
- `Student.prototype.courseLoad`  
  `courseLoad` should return a hash with keys of departments corresponding to
  values representing the number of credits the student is taking in that
  department.

#### `Course` class

- `Course`  
  The `Course` constructor function should take the course name, department, and
  number of credits. It should also initialize a `students` attribute to an
  empty array.
- `Course.prototype.addStudent`  
  `addStudent` should add a student to the class.
  - You can probably rely upon `Student.prototype.enroll`.

#### Overlapping courses

- Each course should also take a set of days of the week (`'mon'`, `'tue'`,
  ...), plus a time block. (Assume each day is broken into 8 consecutive time
  blocks). So a course could meet `['mon', 'wed', 'fri']` during block #1.
  - Update your constructor function to also take a time block and days of the
    week.
- Write a method `Course.prototype.conflictsWith` which takes a second `Course`
  and returns `true` if they conflict. For example, a course that meets Tuesday
  during block #1 would conflict with a class that meets Tuesday and
  Thursday during block #1; it would not conflict with courses that meet Tuesday
  during block #2 or Wednesday during block #1.
- Update `Student.prototype.enroll` so that an error is raised if a `Student`
  enrolls in a course that conflicts with an existing course time.
  - Write a `Student.prototype.hasConflict` helper method.

### Recap

Although you will be relying on Rails for most of your data modeling going
forward, there are times when model logic is best handled on the frontend. In
this case you may find it beneficial to use OOP to aid you in that abstraction.

## You are the hero of your own story! Move on to the next exercise. 😸
