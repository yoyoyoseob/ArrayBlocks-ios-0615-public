---
tags: blocks, NSArray
languages: objc
---

#ArrayBlocks

## Instructions

Apple has provided us with some great functionality in the `NSArray` class that we haven't touched on just yet. For example, the method `enumerateObjectsUsingBlock:` gives us quite of flexibility to do a lot with the objects in an array, with fewer lines of code. Similarly, Apple provides us some advanced functionality for filtering collections such as `NSArray` with its `predicateUsingBlock:` method.

Let's take a look at an example of each of these.

######Example
```objc
[testArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
	NSLog(@"%@",@([(NSNumber *)obj integerValue] + 1));
}];
```

Here we have created an implementation of `enumerateObjectsUsingBlock` that will return each numeric value in our `NSArray` with that number plus one. (Be careful: This block does not consider the possibility that your array contains objects that do not conform to the method `integerValue`!)

######Example
```objc
[NSPredicate *evenPredicate = [NSPredicate predicateWithBlock:^BOOL(id evaluatedObject, NSDictionary *bindings){
        return ([evaluatedObject integerValue]%2 == 0);
    }];
    
NSArray *filteredResultsArrayTwo = [resultsArray filteredArrayUsingPredicate:evenPredicate];
```

Here we have created a predicate that will return only even numbers of our array. Same as above: Be careful. This block does not consider the possibility that your array contains objects that do not conform to the method `integerValue`! 

Now it is your turn: Try writing your own methods that take blocks of code to mimic the capabilities of these two functions for `NSArray` objects. Your methods should extend the NSArray class (via a category) and will be called `mapWithOperation:` (our form of `enumerateObjectsUsingBlock:`) and `selectWithComparator:` (our form of `predicateUsingBlock:`). The arguments should be the blocks.

Two additional notes:

1) For our equivalent of `enumerateObjectsUsingBlock` do not concern yourself with adding in the BOOL* argument for the basic version.

2) There are no tests for this lab; so in order to know it has worked, make sure you try running you methods with some dummy data of your own.

3) `selectWithComparitor` should be built as an instance method, not a class method like `predicateWithBlock`.

Go!


##Advanced
Now add in the BOOL* argument for `mapWithOperation:`. Note: This will not further your understanding of blocks, but it will teach you a little bit more about memory addresses.