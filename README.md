---
tags: blocks, NSArray
languages: objc
---

#ArrayBlocks

## Instructions

Apple has provided us with some great functionality in the `NSArray` class that we haven't touched on just yet. For example, the method `enumerateObjectsUsingBlock:` gives us quite of flexibility to do a lot with the objects in an array, with fewer lines of code. Similarly, Apple provides us some advanced functionality for filtering collections such as `NSArray` with its `predicateUsingBlock:` method.

Now it is your turn: Try writing your own methods that take blocks of code to mimic the capabilities of these two functions for `NSArray` objects. Your methods should extend the NSArray class and will be called `mapWithOperation:` and `selectWithComparator:`. The arguments should be the blocks.

Go!