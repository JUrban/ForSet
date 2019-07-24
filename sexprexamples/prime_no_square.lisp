(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aRationalNumber" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xr" "xq")
     ASSUMPTION
     (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xr" "xq")))
       ("aRationalNumber" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xr" "xq")
     ASSUMPTION
     (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xr" "xq") ("sdtasdt" "xq" "xr"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xr" "xq" "xs")
     ASSUMPTION
     (AND (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq"))
          ("aRationalNumber" "xs"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xr" ("sdtasdt" "xq" "xs"))
      ("sdtasdt" ("sdtasdt" "xr" "xq") "xs"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xq" "xs" "xr")
     ASSUMPTION
     (AND (AND ("aRationalNumber" "xq") ("aRationalNumber" "xs"))
          ("aRationalNumber" "xr"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES ("=" ("sdtasdt" "xq" "xs") ("sdtasdt" "xq" "xr"))
      ("=" "xs" "xr"))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("aNaturalNumber" (DB 0)))
       ("aRationalNumber" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xn" "xm")
     ASSUMPTION
     (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm"))
     "__"
     (BODY))
   (BLOCK (DECL) POSIT ("aNaturalNumber" ("sdtasdt" "xn" "xm")) "__" (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xn" "xm")
     ASSUMPTION
     (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("sdtbrdt" "xn" "xm"))
      (EXISTS
       (AND ("aNaturalNumber" (DB 0)) ("=" ("sdtasdt" (DB 0) "xn") "xm"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xn" "xm")
     ASSUMPTION
     (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("misCoprime" "xn" "xm"))
      (NOT
       (EXISTS
        (AND ("aNaturalNumber" (DB 0))
             (AND ("sdtbrdt" (DB 0) "xn") ("sdtbrdt" (DB 0) "xm"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xn") ASSUMPTION ("aNaturalNumber" "xn") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("isPrime" "xn")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xp" "xn" "xm")
     ASSUMPTION
     (AND
      (AND (AND ("aNaturalNumber" "xp") ("isPrime" "xp"))
           ("aNaturalNumber" "xn"))
      ("aNaturalNumber" "xm"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES ("sdtbrdt" "xp" ("sdtasdt" "xn" "xm"))
      (OR ("sdtbrdt" "xp" "xn") ("sdtbrdt" "xp" "xm")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xq") ASSUMPTION ("aRationalNumber" "xq") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (EXISTS
      (EXISTS
       (AND (AND ("aNaturalNumber" (DB 1)) ("aNaturalNumber" (DB 0)))
            (AND ("misCoprime" (DB 1) (DB 0))
                 ("=" ("sdtasdt" (DB 1) "xq") (DB 0))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xp")
     ASSUMPTION
     (AND ("aNaturalNumber" "xp") ("isPrime" "xp"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (FORALL
      (IMPLIES ("aRationalNumber" (DB 0))
       (NOT ("=" "xp" ("sdtasdt" (DB 0) (DB 0))))))
     "__"
     (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
      (BLOCK (DECL "xq")
        SELECTION
        (AND ("aRationalNumber" "xq") ("=" "xp" ("sdtasdt" "xq" "xq")))
        "__"
        (BODY))
      (BLOCK (DECL "xm" "xn")
        SELECTION
        (AND (AND ("aNaturalNumber" "xm") ("aNaturalNumber" "xn"))
             (AND ("misCoprime" "xm" "xn") ("=" ("sdtasdt" "xm" "xq") "xn")))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("sdtasdt" "xp" ("sdtasdt" "xm" "xm")) ("sdtasdt" "xn" "xn"))
        "__"
        (BODY))
      (BLOCK (DECL) AFFIRMATION ("sdtbrdt" "xp" "xn") "__" (BODY))
      (BLOCK (DECL "xk")
        SELECTION
        (AND ("aNaturalNumber" "xk") ("=" "xn" ("sdtasdt" "xk" "xp")))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("sdtasdt" "xp" ("sdtasdt" "xm" "xm"))
         ("sdtasdt" "xp" ("sdtasdt" "xk" "xn")))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("sdtasdt" "xm" "xm") ("sdtasdt" "xp" ("sdtasdt" "xk" "xk")))
        "__"
        (BODY))
      (BLOCK (DECL) AFFIRMATION ("sdtbrdt" "xp" "xm") "__" (BODY))
      (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))))
