### Takeaways

- Every data structure has advantages and disadvantages. Knowing them is key to writing performant software
- Functions such as insert(at:) for Array have performance characteristics that can cripple performance when used haphazardly. If you find yourself needing to use insert(at:) frequently with indices near the beginning of the array, you may want to consider a different data structure such as the linked list.
- Dictionary trades away the ability to maintain the order of its elements for fast insertion and searching.
- Set guarantees uniqueness in a collection of values. Set is optimized for speed and abandons the ability to retain the order of the elements.
