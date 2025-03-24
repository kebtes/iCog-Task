; TASK 2
; Write a MeTTa function called is-member that takes two arguments:
;   ● list :$list.
;   ● An element: $x.

; The function should return true if the element $x is present in the list $list, and false otherwise.
; E.g ( is-member (4 2 5 6) 2);gives True
; ( is-member (4 2 5 6) 10);gives False
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

; used assertion for the test cases, should output () if right
! (assertEqual (is-member (4 2 5 6) 10) False) 
! (assertEqual (is-member (4 2 5 6) 2) True) 
