(= (not-empty $list) 
    (if (== $list ()) False True)
)

(= (extractor $list $func)
    (if (== $list ())
        ()
        (let $head (car-atom $list)
            (let $tail (extractor (cdr-atom $list) $func)
                (if ($func $head)
                    (cons-atom $head $tail)
                    $tail
                )
            )
        )
    )
)

; used assertion for the test cases, should output () if right
! (assertEqual (extractor ((a) () (b g) (d e) ()) not-empty) ((a) (b g) (d e))) 
! (assertEqual (extractor ((a b) () () (d e) ()) not-empty) ((a b) (d e))) 
! (assertEqual (extractor () not-empty) ()) 