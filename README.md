# Introduction
An enumerable in Ruby is a method that enumerates (goes one by one) over every element of a collection.

Most of these methods take a *block of code* as an argument. The block starts with `do` and ends with `end`. This block takes an argument(s) in pipes, `||`, known *block parameter(s)* that represents each element from the collection.

## What is a block
A block is a chunk of code between braces, `{}`, or between `do/end` keywords that you can pass to a method - almost exactly like you can pass an argument to a method.

The iterator methods and/or enumerable methods would run and pass data to the code in the block for that code to operate on or do something with.

## What are the  ||
These are called *"pipes"*. When invoking an enumerable method, the variable name inside the pipes acts as an *argument* that is being passed into the block. The method will pass each element of the collection on which it is called to the block. As each element gets passed into the block, the value of this argument (that's inside pipes) will be equal to the value of that element.

## Accessing the index
Sometimes it's helpful to know the index position of the element you are iterating over in an array. 
With Ruby, to access the index, you can chain the `#with_index` method on most enumerable methods

## each