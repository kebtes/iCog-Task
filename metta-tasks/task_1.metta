; TASK 1
; Family Tree Knowledge Representation and add the following in a space called family
; Problem:
; You are given a family tree with the following relationships
; Bob is the parent of Ann
; Bob is the parent of Joe
; Ann is the parent of Mary
; Ann is the parent of John

; Task:
; Represent the family tree in MeTTa using the Parent relationship.
;   ● Write a MeTTa function called find-children that takes a person's name as input and returns their children.
;   ● Write a MeTTa function called find-grandchildren that takes a person's name as input and returns their grandchildren.

; Example Input/Output:
; Input: (find-children Bob)
;   Output: (Ann Joe)
; Input: (find-grandchildren Bob)
;   Output: (Mary John)
; -----------------------------------------------------------------------------------------------------------------------------------

(Parent Bob Ann)
(Parent Bob Joe)
(Parent Ann Marry)
(Parent Ann John)

(= (find-children $parent)
    (match &self (Parent $parent $child) $child)
)

! (find-children Bob)

(= (find-grandchildren $grand-parent)
    (find-children (find-children $grand-parent))
)

! (find-grandchildren Bob)