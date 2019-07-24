(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
       ("aSet" ("sdtlbdtrb" "xf" (DB 0)))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xM"))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) (DB 1))
              ("aElementOf" (DB 0) "xM"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("tthePowersetOf" "xM")))
       (AND ("aSet" (DB 0)) ("=" (DB 0) (LAMBDA ("aSubsetOf" (DB 0) "xM"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xf" "xM")
     ASSUMPTION
     (AND ("aFunction" "xf") ("aSet" "xM"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("doSurjectsOnto" "xf" "xM"))
      (FORALL
       (IMPLIES ("aElementOf" (DB 0) "xM")
        (EXISTS
         (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
              ("=" (DB 1) ("sdtlbdtrb" "xf" (DB 0))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (FORALL
      (IMPLIES (AND ("aFunction" (DB 0)) ("=" ("szDzozmlpdtrp" (DB 0)) "xM"))
       (NOT ("doSurjectsOnto" (DB 0) ("tthePowersetOf" "xM")))))
     "__"
     (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
      (BLOCK (DECL "xf")
        SELECTION
        (AND ("aFunction" "xf")
             (AND ("=" ("szDzozmlpdtrp" "xf") "xM")
                  ("doSurjectsOnto" "xf" ("tthePowersetOf" "xM"))))
        "__"
        (BODY))
      (BLOCK (DECL "xN")
        LOWDEFINITION
        (AND ("aSet" "xN")
             ("=" "xN"
              (LAMBDA
                  (AND ("aElementOf" (DB 0) "xM")
                   (NOT ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" (DB 0))))))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IMPLIES ("aElementOf" (DB 0) "xM")
          (NOT ("=" "xN" ("sdtlbdtrb" "xf" (DB 0))))))
        "__"
        (BODY))
      (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))))
