# Prolog Grid Puzzle
This Prolog project handles a grid puzzle involving words and their intersections. The code defines a predicate to solve the puzzle by ensuring that the words fit the specified lengths and that the intersections between words are valid.

## Overview
The project includes the following key predicates:

### grid/3: 
Main predicate that checks if the given lengths and intersections can be satisfied by a list of words.
### different_element/1: 
Ensures that all elements in a list are unique.
### find_length/2: 
Computes the length of each word in a list.
### intersection/2: 
Checks if two words intersect correctly at given indices.
### process_intersections/2:
Processes a list of intersections and validates them.
### find_words/3:
Retrieves the N-th element from a list.
