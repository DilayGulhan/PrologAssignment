grid(Lengths, Intersections, Words) :-
    find_length(Words, Lengths),
    process_intersections(Intersections, Words),
    different_element(Words).

different_element(List) :-
    different_element(List, []).

different_element([], _).
different_element([Head|Tail], Acc) :-
    \+ member(Head, Acc),
    different_element(Tail, [Head|Acc]).

find_length([], []).
find_length([WordHead|TailWord], [LengthHead|TailLength]) :-
    word(WordHead),
    atom_chars(WordHead, WordOfList),
    length(WordOfList, LengthHead),
    find_length(TailWord, TailLength).

intersection(Words, [Word1, Index1, Word2, Index2]) :-
    find_words(Word1, Words, Y1),
    atom_chars(Y1, Length1),
    length(Length1, Len1),
    Index1 < Len1,
    find_words(Index1, Length1, X),
    find_words(Word2, Words, Y2),
    atom_chars(Y2, Length2),
    length(Length2, Len2),
    Index2 < Len2,
    find_words(Index2, Length2, X),
	Word1\=Word2.

process_intersections([], _).
process_intersections([[Word1, Index1, Word2, Index2]|Rest], Words) :-
    intersection(Words, [Word1, Index1, Word2, Index2]),
    process_intersections(Rest, Words).

find_words(0, [Head|_], Head).
find_words(N, [_|Tail], Element) :-
    N > 0,
    N1 is N - 1,
    find_words(N1, Tail, Element).
	
	% Query: grid([5, 3, 4, 4, 3], [[0, 1, 1, 2], [0, 3, 2, 1], [2, 3, 3, 2], [3, 3, 4, 0]], ReturnedList).
	%grid([4, 4, 3, 5, 3], [[0,1,1,2], [0,3,2,1], [2,2,3,3], [3,4,4,0]], ReturnedList).