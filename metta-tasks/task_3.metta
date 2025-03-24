; TASK 3
; Write a MeTTa function called removeDuplicates that takes a list $list as input and returns a new list with all duplicate elements removed.
; E.g Input: (removeDuplicates (1 2 3 2 ))
; Output: (1 2 3)
; -----------------------------------------------------------------------------------------------------------------------------------

(= (is-member $list $x)
    (if (== $list ())
        False
        (let $first_element (car-atom $list)
            (if (== $first_element $x)
                True
                (is-member (cdr-atom $list) $x)
            )
        )
    )
)

(= (remove-duplicates $list)
    (if (== $list ())
        ()
        (let $first-value (car-atom $list)
            (let $tail (remove-duplicates (cdr-atom $list))
                (if (is-member $tail $first-value)
                    $tail
                    (cons-atom $first-value $tail)
                )
            )
        )
    )
)

; used assertion for the test cases, should output () if right
! (assertEqual (remove-duplicates (1 2 3 2)) (1 3 2))
! (assertEqual (remove-duplicates (1 1 5 5 6 6 7 7 7 7)) (1 5 6 7))
! (assertEqual (remove-duplicates (1 9 9 2 1 3 3)) (9 2 1 3))

