(BLOCK (DECL)
  SIGNATURE
  "?"
  "Integers"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aInteger" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "IntZero"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz0"))) ("aInteger" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "IntOne"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz1"))) ("aInteger" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "IntNeg"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("smndt" "xa"))) ("aInteger" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "IntPlus"
  (BODY
   (BLOCK (DECL "xa" "xb")
     ASSUMPTION
     (AND ("aInteger" "xa") ("aInteger" "xb"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtpldt" "xa" "xb")))
       ("aInteger" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "IntMult"
  (BODY
   (BLOCK (DECL "xa" "xb")
     ASSUMPTION
     (AND ("aInteger" "xa") ("aInteger" "xb"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xa" "xb")))
       ("aInteger" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddAsso"
  (BODY
   (BLOCK (DECL "xa" "xb" "xc")
     ASSUMPTION
     (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtpldt" "xa" ("sdtpldt" "xb" "xc"))
      ("sdtpldt" ("sdtpldt" "xa" "xb") "xc"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddComm"
  (BODY
   (BLOCK (DECL "xa" "xb")
     ASSUMPTION
     (AND ("aInteger" "xa") ("aInteger" "xb"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtpldt" "xa" "xb") ("sdtpldt" "xb" "xa"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddZero"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtpldt" "xa" ("sz0")) "xa")
          ("=" "xa" ("sdtpldt" ("sz0") "xa")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddNeg"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtpldt" "xa" ("smndt" "xa")) ("sz0"))
          ("=" ("sz0") ("sdtpldt" ("smndt" "xa") "xa")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulAsso"
  (BODY
   (BLOCK (DECL "xa" "xb" "xc")
     ASSUMPTION
     (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xa" ("sdtasdt" "xb" "xc"))
      ("sdtasdt" ("sdtasdt" "xa" "xb") "xc"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulComm"
  (BODY
   (BLOCK (DECL "xa" "xb")
     ASSUMPTION
     (AND ("aInteger" "xa") ("aInteger" "xb"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xa" "xb") ("sdtasdt" "xb" "xa"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulOne"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtasdt" "xa" ("sz1")) "xa")
          ("=" "xa" ("sdtasdt" ("sz1") "xa")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Distrib"
  (BODY
   (BLOCK (DECL "xa" "xb" "xc")
     ASSUMPTION
     (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (AND
      ("=" ("sdtasdt" "xa" ("sdtpldt" "xb" "xc"))
       ("sdtpldt" ("sdtasdt" "xa" "xb") ("sdtasdt" "xa" "xc")))
      ("=" ("sdtasdt" ("sdtpldt" "xa" "xb") "xc")
       ("sdtpldt" ("sdtasdt" "xa" "xc") ("sdtasdt" "xb" "xc"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "MulZero"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (AND ("=" ("sdtasdt" "xa" ("sz0")) ("sz0"))
          ("=" ("sz0") ("sdtasdt" ("sz0") "xa")))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "MulMinOne"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (AND ("=" ("sdtasdt" ("smndt" ("sz1")) "xa") ("smndt" "xa"))
          ("=" ("smndt" "xa") ("sdtasdt" "xa" ("smndt" ("sz1")))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "ZeroDiv"
  (BODY
   (BLOCK (DECL "xa" "xb")
     ASSUMPTION
     (AND ("aInteger" "xa") ("aInteger" "xb"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (AND (NOT ("=" "xa" ("sz0"))) (NOT ("=" "xb" ("sz0"))))
      (NOT ("=" ("sdtasdt" "xa" "xb") ("sz0"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Divisor"
  (BODY (BLOCK (DECL "xb") ASSUMPTION ("aInteger" "xb") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aDivisorOf" (DB 0) "xb"))
       (AND ("aInteger" (DB 0))
            (AND (NOT ("=" (DB 0) ("sz0")))
                 (EXISTS
                  (AND ("aInteger" (DB 0))
                       ("=" ("sdtasdt" (DB 1) (DB 0)) "xb")))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "EquMod"
  (BODY
   (BLOCK (DECL "xa" "xb" "xq")
     ASSUMPTION
     (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
          (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))
      ("aDivisorOf" "xq" ("sdtpldt" "xa" ("smndt" "xb"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "EquModRef"
  (BODY
   (BLOCK (DECL "xa" "xq")
     ASSUMPTION
     (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("sdteqdtlpzmzozddtrp" "xa" "xa" "xq")
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "EquModSym"
  (BODY
   (BLOCK (DECL "xa" "xb" "xq")
     ASSUMPTION
     (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
          (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (IMPLIES ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
      ("sdteqdtlpzmzozddtrp" "xb" "xa" "xq"))
     "__"
     (BODY
      (BLOCK (DECL)
        ASSUMPTION
        ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
        "__"
        (BODY))
      (BLOCK (DECL "xn")
        SELECTION
        (AND ("aInteger" "xn")
             ("=" ("sdtasdt" "xq" "xn") ("sdtpldt" "xa" ("smndt" "xb"))))
        "1"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (EQUALITYCHAIN TAG
         ("=" ("sdtasdt" "xq" ("smndt" "xn"))
          ("sdtasdt" ("smndt" ("sz1")) ("sdtpldt" "xa" ("smndt" "xb")))))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtasdt" "xq" ("smndt" "xn"))
             ("sdtasdt" ("smndt" ("sz1")) ("sdtasdt" "xq" "xn"))))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtasdt" ("smndt" ("sz1")) ("sdtasdt" "xq" "xn"))
             ("sdtasdt" ("smndt" ("sz1")) ("sdtpldt" "xa" ("smndt" "xb")))))
           "__"
           (BODY))))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "EquModTrn"
  (BODY
   (BLOCK (DECL "xa" "xb" "xq" "xc")
     ASSUMPTION
     (AND
      (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
           (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
      ("aInteger" "xc"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (IMPLIES
      (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
           ("sdteqdtlpzmzozddtrp" "xb" "xc" "xq"))
      ("sdteqdtlpzmzozddtrp" "xa" "xc" "xq"))
     "__"
     (BODY
      (BLOCK (DECL)
        ASSUMPTION
        (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
             ("sdteqdtlpzmzozddtrp" "xb" "xc" "xq"))
        "__"
        (BODY))
      (BLOCK (DECL "xn")
        SELECTION
        (AND ("aInteger" "xn")
             ("=" ("sdtasdt" "xq" "xn") ("sdtpldt" "xa" ("smndt" "xb"))))
        "__"
        (BODY))
      (BLOCK (DECL "xm")
        SELECTION
        (AND ("aInteger" "xm")
             ("=" ("sdtasdt" "xq" "xm") ("sdtpldt" "xb" ("smndt" "xc"))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("sdtasdt" "xq" ("sdtpldt" "xn" "xm"))
         ("sdtpldt" "xa" ("smndt" "xc")))
        "__"
        (BODY))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "EquModMul"
  (BODY
   (BLOCK (DECL "xa" "xb" "xp" "xq")
     ASSUMPTION
     (AND
      (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
           (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0")))))
      (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (IMPLIES ("sdteqdtlpzmzozddtrp" "xa" "xb" ("sdtasdt" "xp" "xq"))
      (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xp")
           ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")))
     "__"
     (BODY
      (BLOCK (DECL)
        ASSUMPTION
        ("sdteqdtlpzmzozddtrp" "xa" "xb" ("sdtasdt" "xp" "xq"))
        "__"
        (BODY))
      (BLOCK (DECL "xm")
        SELECTION
        (AND ("aInteger" "xm")
             ("=" ("sdtasdt" ("sdtasdt" "xp" "xq") "xm")
              ("sdtpldt" "xa" ("smndt" "xb"))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND
         ("=" ("sdtasdt" "xp" ("sdtasdt" "xq" "xm"))
          ("sdtpldt" "xa" ("smndt" "xb")))
         ("=" ("sdtpldt" "xa" ("smndt" "xb"))
          ("sdtasdt" "xq" ("sdtasdt" "xp" "xm"))))
        "__"
        (BODY))))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "Prime"
  (BODY (BLOCK (DECL "xa") ASSUMPTION ("aInteger" "xa") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("isPrime" "xa")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "PrimeDivisor"
  (BODY (BLOCK (DECL "xn") ASSUMPTION ("aInteger" "xn") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (EXISTS (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
      (AND (NOT ("=" "xn" ("sz1"))) (NOT ("=" "xn" ("smndt" ("sz1"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Subset"
  (BODY (BLOCK (DECL "xS") ASSUMPTION ("aSet" "xS") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xS"))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) (DB 1))
              ("aElementOf" (DB 0) "xS"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "FinSet"
  (BODY (BLOCK (DECL "xS") ASSUMPTION ("aSet" "xS") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("isFinite" "xS")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("szIzNzT")))
       (AND ("aSet" (DB 0)) ("=" (DB 0) (LAMBDA ("aInteger" (DB 0)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Union"
  (BODY
   (BLOCK (DECL "xA" "xB")
     ASSUMPTION
     (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sdtbsmnsldt" "xA" "xB")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (AND ("aInteger" (DB 0))
                   (OR ("aElementOf" (DB 0) "xA")
                    ("aElementOf" (DB 0) "xB")))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Intersection"
  (BODY
   (BLOCK (DECL "xA" "xB")
     ASSUMPTION
     (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sdtslmnbsdt" "xA" "xB")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (AND ("aInteger" (DB 0))
                   (AND ("aElementOf" (DB 0) "xA")
                    ("aElementOf" (DB 0) "xB")))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "IntegerSets"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aFamilyOfIntegerSets" (DB 0)))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) (DB 1))
              ("aSubsetOf" (DB 0) ("szIzNzT")))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "UnionSet"
  (BODY
   (BLOCK (DECL "xS") ASSUMPTION ("aFamilyOfIntegerSets" "xS") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sbsmnsldt" "xS")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (AND ("aInteger" (DB 0))
                   (EXISTS
                    (AND ("aElementOf" (DB 0) "xS")
                     ("aElementOf" (DB 1) (DB 0)))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xS") ASSUMPTION ("aFamilyOfIntegerSets" "xS") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("aSubsetOf" ("sbsmnsldt" "xS") ("szIzNzT"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Complement"
  (BODY
   (BLOCK (DECL "xA") ASSUMPTION ("aSubsetOf" "xA" ("szIzNzT")) "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("stldt" "xA")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (AND ("aInteger" (DB 0))
                   (NOT ("aElementOf" (DB 0) "xA")))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xA") ASSUMPTION ("aSubsetOf" "xA" ("szIzNzT")) "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("aSubsetOf" ("stldt" "xA") ("szIzNzT"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "ArSeq"
  (BODY
   (BLOCK (DECL "xa" "xq")
     ASSUMPTION
     (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (AND ("aInteger" (DB 0))
                   ("sdteqdtlpzmzozddtrp" (DB 0) "xa" "xq"))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Open"
  (BODY
   (BLOCK (DECL "xA") ASSUMPTION ("aSubsetOf" "xA" ("szIzNzT")) "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isOpen" "xA"))
      (FORALL
       (IMPLIES ("aElementOf" (DB 0) "xA")
        (EXISTS
         (AND (AND ("aInteger" (DB 0)) (NOT ("=" (DB 0) ("sz0"))))
              ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" (DB 1) (DB 0)) "xA"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Closed"
  (BODY
   (BLOCK (DECL "xA") ASSUMPTION ("aSubsetOf" "xA" ("szIzNzT")) "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isClosed" "xA")) ("isOpen" ("stldt" "xA")))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "OpenIntegerSets"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aOpenFamily" (DB 0)))
       (AND ("aFamilyOfIntegerSets" (DB 0))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("isOpen" (DB 0)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "UnionOpen"
  (BODY (BLOCK (DECL "xS") ASSUMPTION ("aOpenFamily" "xS") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("isOpen" ("sbsmnsldt" "xS"))
     "__"
     (BODY
      (BLOCK (DECL "xx")
        ASSUMPTION
        ("aElementOf" "xx" ("sbsmnsldt" "xS"))
        "__"
        (BODY))
      (BLOCK (DECL "xM")
        SELECTION
        (AND ("aSet" "xM")
             (AND ("aElementOf" "xM" "xS") ("aElementOf" "xx" "xM")))
        "__"
        (BODY))
      (BLOCK (DECL "xq")
        SELECTION
        (AND (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))
             ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") "xM"))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") ("sbsmnsldt" "xS"))
        "__"
        (BODY))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "InterOpen"
  (BODY
   (BLOCK (DECL "xA" "xB")
     ASSUMPTION
     (AND (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
          (AND ("isOpen" "xA") ("isOpen" "xB")))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (AND ("aSubsetOf" ("sdtslmnbsdt" "xA" "xB") ("szIzNzT"))
          ("isOpen" ("sdtslmnbsdt" "xA" "xB")))
     "__"
     (BODY
      (BLOCK (DECL)
        AFFIRMATION
        ("aSubsetOf" ("sdtslmnbsdt" "xA" "xB") ("szIzNzT"))
        "__"
        (BODY))
      (BLOCK (DECL "xx")
        ASSUMPTION
        ("aElementOf" "xx" ("sdtslmnbsdt" "xA" "xB"))
        "__"
        (BODY))
      (BLOCK (DECL) AFFIRMATION ("aInteger" "xx") "__" (BODY))
      (BLOCK (DECL "xq")
        SELECTION
        (AND (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))
             ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") "xA"))
        "__"
        (BODY))
      (BLOCK (DECL "xp")
        SELECTION
        (AND (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0"))))
             ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xp") "xB"))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND
         (AND ("aInteger" ("sdtasdt" "xp" "xq"))
              (NOT ("=" ("sdtasdt" "xp" "xq") ("sz0"))))
         ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" ("sdtasdt" "xp" "xq"))
          ("sdtslmnbsdt" "xA" "xB")))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aInteger" ("sdtasdt" "xp" "xq"))
                (NOT ("=" ("sdtasdt" "xp" "xq") ("sz0"))))
           "__"
           (BODY))
         (BLOCK (DECL "xa")
           ASSUMPTION
           ("aElementOf" "xa"
            ("szAzrzSzezqlpdtcmdtrp" "xx" ("sdtasdt" "xp" "xq")))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" "xp"))
                ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq")))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (AND ("aInteger" "xx")
                   ("sdteqdtlpzmzozddtrp" "xa" "xx" ("sdtasdt" "xp" "xq")))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              (AND ("sdteqdtlpzmzozddtrp" "xa" "xx" "xp")
                   ("sdteqdtlpzmzozddtrp" "xa" "xx" "xq"))
              "__"
              (BODY))))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aElementOf" "xa" "xA") ("aElementOf" "xa" "xB"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           ("aElementOf" "xa" ("sdtslmnbsdt" "xA" "xB"))
           "__"
           (BODY))))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "UnionClosed"
  (BODY
   (BLOCK (DECL "xA" "xB")
     ASSUMPTION
     (AND (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
          (AND ("isClosed" "xA") ("isClosed" "xB")))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("isClosed" ("sdtbsmnsldt" "xA" "xB"))
     "__"
     (BODY
      (BLOCK (DECL)
        AFFIRMATION
        (AND ("aSubsetOf" ("stldt" "xA") ("szIzNzT"))
             ("aSubsetOf" ("stldt" "xB") ("szIzNzT")))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("stldt" ("sdtbsmnsldt" "xA" "xB"))
         ("sdtslmnbsdt" ("stldt" "xA") ("stldt" "xB")))
        "__"
        (BODY))))))
(BLOCK (DECL)
  AXIOM
  "?"
  "UnionSClosed"
  (BODY
   (BLOCK (DECL "xS")
     ASSUMPTION
     (AND ("aFamilyOfIntegerSets" "xS")
          (AND ("isFinite" "xS")
               (FORALL
                (IMPLIES ("aElementOf" (DB 0) "xS")
                 (AND ("aSubsetOf" (DB 0) ("szIzNzT")) ("isClosed" (DB 0)))))))
     "__"
     (BODY))
   (BLOCK (DECL) POSIT ("isClosed" ("sbsmnsldt" "xS")) "__" (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "ArSeqClosed"
  (BODY
   (BLOCK (DECL "xa" "xq")
     ASSUMPTION
     (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (AND ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq") ("szIzNzT"))
          ("isClosed" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
     "__"
     (BODY
      (BLOCK (DECL)
        AFFIRMATION
        ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq") ("szIzNzT"))
        "__"
        (BODY))
      (BLOCK (DECL "xb")
        ASSUMPTION
        ("aElementOf" "xb" ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xb" "xq")
         ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
        "__"
        (BODY
         (BLOCK (DECL "xc")
           ASSUMPTION
           ("aElementOf" "xc" ("szAzrzSzezqlpdtcmdtrp" "xb" "xq"))
           "__"
           (BODY))
         (BLOCK (DECL)
           ASSUMPTION
           (NOT
            ("aElementOf" "xc" ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("sdteqdtlpzmzozddtrp" "xc" "xb" "xq")
                ("sdteqdtlpzmzozddtrp" "xa" "xc" "xq"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           ("sdteqdtlpzmzozddtrp" "xb" "xa" "xq")
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           ("aElementOf" "xb" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))
           "__"
           (BODY))
         (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "Fuerstenberg"
  (BODY (BLOCK (DECL "xS") ASSUMPTION ("aSet" "xS") "__" (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (FORALL
      (IFF ("aElementOf" (DB 0) "xS")
       (EXISTS
        (AND
         (AND ("aInteger" (DB 0))
              (AND (NOT ("=" (DB 0) ("sz0"))) ("isPrime" (DB 0))))
         ("=" (DB 1) ("szAzrzSzezqlpdtcmdtrp" ("sz0") (DB 0)))))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (NOT ("isFinite" "xS"))
     "__"
     (BODY (BLOCK (DECL) AFFIRMATION ("aFamilyOfIntegerSets" "xS") "__" (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IFF ("aElementOf" (DB 0) ("stldt" ("sbsmnsldt" "xS")))
          (OR ("=" (DB 0) ("sz1")) ("=" (DB 0) ("smndt" ("sz1"))))))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (FORALL
            (IMPLIES ("aInteger" (DB 0))
             (IFF ("aElementOf" (DB 0) ("sbsmnsldt" "xS"))
              (EXISTS (AND ("aDivisorOf" (DB 0) (DB 1)) ("isPrime" (DB 0)))))))
           "__"
           (BODY (BLOCK (DECL "xn") ASSUMPTION ("aInteger" "xn") "__" (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              (IMPLIES
               (EXISTS (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
               ("aElementOf" "xn" ("sbsmnsldt" "xS")))
              "__"
              (BODY
               (BLOCK (DECL)
                 ASSUMPTION
                 (EXISTS (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
                 "__"
                 (BODY))
               (BLOCK (DECL "xp")
                 SELECTION
                 (AND ("aDivisorOf" "xp" "xn") ("isPrime" "xp"))
                 "__"
                 (BODY))
               (BLOCK (DECL)
                 AFFIRMATION
                 ("aElementOf" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xp") "xS")
                 "__"
                 (BODY))
               (BLOCK (DECL)
                 AFFIRMATION
                 ("aElementOf" "xn" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xp"))
                 "__"
                 (BODY))))
            (BLOCK (DECL)
              AFFIRMATION
              (IMPLIES ("aElementOf" "xn" ("sbsmnsldt" "xS"))
               (EXISTS (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0)))))
              "__"
              (BODY
               (BLOCK (DECL)
                 ASSUMPTION
                 ("aElementOf" "xn" ("sbsmnsldt" "xS"))
                 "__"
                 (BODY))
               (BLOCK (DECL "xr")
                 SELECTION
                 (AND
                  (AND ("aInteger" "xr")
                       (AND (NOT ("=" "xr" ("sz0"))) ("isPrime" "xr")))
                  ("aElementOf" "xn" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xr")))
                 "__"
                 (BODY))
               (BLOCK (DECL)
                 AFFIRMATION
                 (AND ("aDivisorOf" "xr" "xn") ("isPrime" "xr"))
                 "__"
                 (BODY))))))))
      (BLOCK (DECL) ASSUMPTION ("isFinite" "xS") "__" (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND ("isClosed" ("sbsmnsldt" "xS"))
             ("isOpen" ("stldt" ("sbsmnsldt" "xS"))))
        "__"
        (BODY))
      (BLOCK (DECL "xp")
        SELECTION
        (AND (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0"))))
             ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp")
              ("stldt" ("sbsmnsldt" "xS"))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (EXISTS
         (AND ("aElementOf" (DB 0) ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))
              (AND (NOT ("=" (DB 0) ("sz1")))
                   (NOT ("=" (DB 0) ("smndt" ("sz1")))))))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (AND
            ("aElementOf" ("sdtpldt" ("sz1") "xp")
             ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))
            ("aElementOf" ("sdtpldt" ("sz1") ("smndt" "xp"))
             ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp")))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND (NOT ("=" ("sdtpldt" ("sz1") "xp") ("sz1")))
                (NOT ("=" ("sdtpldt" ("sz1") ("smndt" "xp")) ("sz1"))))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (OR (NOT ("=" ("sdtpldt" ("sz1") "xp") ("smndt" ("sz1"))))
               (NOT
                ("=" ("sdtpldt" ("sz1") ("smndt" "xp")) ("smndt" ("sz1")))))
           "__"
           (BODY))))
      (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))))
