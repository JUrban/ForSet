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
  (BODY
   (BLOCK (DECL "xM" "xN")
     ASSUMPTION
     (AND ("aSet" "xM") ("aSet" "xN"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sdtbsdt" "xM" "xN")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (AND ("aElementOf" (DB 0) "xM")
                  (NOT ("aElementOf" (DB 0) "xN"))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL "xM")
     ASSUMPTION
     ("aSubsetOf" "xM" ("szDzozmlpdtrp" "xf"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sdtcflbdtrb" "xf" "xM")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (EXISTS
                   (AND ("aElementOf" (DB 0) "xM")
                    ("=" (DB 1) ("sdtlbdtrb" "xf" (DB 0)))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aCardinal" (DB 0))) ("aSet" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xA" "xB")
     ASSUMPTION
     (AND ("aCardinal" "xA") ("aCardinal" "xB"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("sdtlsdt" "xA" "xB")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xA" "xB" "xC")
     ASSUMPTION
     (AND (AND ("aCardinal" "xA") ("aCardinal" "xB")) ("aCardinal" "xC"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (AND ("sdtlsdt" "xA" "xB") ("sdtlsdt" "xB" "xC"))
      ("sdtlsdt" "xA" "xC"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xA" "xB")
     ASSUMPTION
     (AND ("aCardinal" "xA") ("aCardinal" "xB"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (OR (OR ("sdtlsdt" "xA" "xB") ("sdtlsdt" "xB" "xA")) ("=" "xB" "xA"))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("ttheCardinalityOf" "xM")))
       ("aCardinal" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Image_Card"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL "xM")
     ASSUMPTION
     ("aSubsetOf" "xM" ("szDzozmlpdtrp" "xf"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (OR
      ("=" ("ttheCardinalityOf" ("sdtcflbdtrb" "xf" "xM"))
       ("ttheCardinalityOf" "xM"))
      ("sdtlsdt" ("ttheCardinalityOf" ("sdtcflbdtrb" "xf" "xM"))
       ("ttheCardinalityOf" "xM")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xN" "xM")
     ASSUMPTION
     (AND ("aSet" "xN") ("aSet" "xM"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     ("sdtlsdt" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (EXISTS ("aElementOf" (DB 0) ("sdtbsdt" "xM" "xN")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Surj_Exi"
  (BODY
   (BLOCK (DECL "xM" "xN")
     ASSUMPTION
     (AND ("aSet" "xM") ("aSet" "xN"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (OR ("=" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))
         ("sdtlsdt" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN")))
     "__"
     (BODY))
   (BLOCK (DECL) ASSUMPTION (EXISTS ("aElementOf" (DB 0) "xM")) "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (EXISTS
      (AND ("aFunction" (DB 0))
           (AND ("=" "xN" ("szDzozmlpdtrp" (DB 0)))
                ("=" "xM" ("sdtcflbdtrb" (DB 0) ("szDzozmlpdtrp" (DB 0)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL) POSIT ("=" ("ttheCardinalityOf" "xA") "xA") "__" (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aSequenceOfCardinalsOn" (DB 0) "xD"))
       (AND ("aFunction" (DB 0))
            (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xD")
                 (FORALL
                  (IMPLIES ("aElementOf" (DB 0) "xD")
                   ("aCardinal" ("sdtlbdtrb" (DB 1) (DB 0)))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xkappa" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES
       (HEADTERM TAG ("=" (DB 0) ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD")))
       ("aSet" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Sum_Def"
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xkappa" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF ("aElementOf" (DB 0) ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD"))
       (EXISTS
        (EXISTS
         (AND
          (AND ("aElementOf" (DB 0) "xD")
               ("aElementOf" (DB 1) ("sdtlbdtrb" "xkappa" (DB 0))))
          ("=" (DB 2) ("slpdtcmdtrp" (DB 1) (DB 0))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xkappa" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("szSzuzmlpdtcmdtrp" "xkappa" "xD")))
       ("=" (DB 0)
        ("ttheCardinalityOf" ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD")))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xkappa" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES
       (HEADTERM TAG ("=" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD")))
       ("aSet" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Prod_Def"
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xkappa" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD"))
       (AND ("aFunction" (DB 0))
            (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xD")
                 (FORALL
                  (IMPLIES ("aElementOf" (DB 0) "xD")
                   ("aElementOf" ("sdtlbdtrb" (DB 1) (DB 0))
                    ("sdtlbdtrb" "xkappa" (DB 0)))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xkappa" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("szPzrzozdlpdtcmdtrp" "xkappa" "xD")))
       ("=" (DB 0)
        ("ttheCardinalityOf" ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD")))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "Choice"
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xlambda")
     ASSUMPTION
     ("aSequenceOfCardinalsOn" "xlambda" "xD")
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (FORALL
      (IMPLIES ("aElementOf" (DB 0) "xD")
       (EXISTS ("aElementOf" (DB 0) ("sdtlbdtrb" "xlambda" (DB 1))))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (EXISTS
      ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")))
     "__"
     (BODY
      (BLOCK (DECL "xf")
        LOWDEFINITION
        (AND
         (AND ("aFunction" "xf")
              (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xf") "xD")))
         (FORALL
          (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
           (EXISTS
            (AND ("aElementOf" (DB 0) ("sdtlbdtrb" "xlambda" (DB 1)))
                 (EVALUATION TAG ("=" ("sdtlbdtrb" "xf" (DB 1)) (DB 0))))))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("aElementOf" "xf" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD"))
        "__"
        (BODY))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "Koenig"
  (BODY (BLOCK (DECL "xD") ASSUMPTION ("aSet" "xD") "__" (BODY))
   (BLOCK (DECL "xkappa" "xlambda")
     ASSUMPTION
     (AND ("aSequenceOfCardinalsOn" "xkappa" "xD")
          ("aSequenceOfCardinalsOn" "xlambda" "xD"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (FORALL
      (IMPLIES ("aElementOf" (DB 0) "xD")
       ("sdtlsdt" ("sdtlbdtrb" "xkappa" (DB 0))
        ("sdtlbdtrb" "xlambda" (DB 0)))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("sdtlsdt" ("szSzuzmlpdtcmdtrp" "xkappa" "xD")
      ("szPzrzozdlpdtcmdtrp" "xlambda" "xD"))
     "__"
     (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (OR
         ("=" ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")
          ("szSzuzmlpdtcmdtrp" "xkappa" "xD"))
         ("sdtlsdt" ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")
          ("szSzuzmlpdtcmdtrp" "xkappa" "xD")))
        "__"
        (BODY))
      (BLOCK (DECL "xG")
        SELECTION
        (AND ("aFunction" "xG")
             (AND
              ("=" ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD")
               ("szDzozmlpdtrp" "xG"))
              ("=" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")
               ("sdtcflbdtrb" "xG" ("szDzozmlpdtrp" "xG")))))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (EXISTS
            ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")))
           "__"
           (BODY))))
      (BLOCK (DECL "xDiag")
        LOWDEFINITION
        (AND
         (AND ("aFunction" "xDiag")
              (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xDiag") "xD")))
         (FORALL
          (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xDiag"))
           (EXISTS
            (AND
             (DEFINED TAG
              (AND ("aSet" (DB 0))
                   ("=" (DB 0)
                    (LAMBDA
                        (REPLACEMENT TAG
                         (EXISTS
                          (AND
                           ("aElementOf" (DB 0) ("sdtlbdtrb" "xkappa" "xi"))
                           ("=" (DB 1)
                            ("sdtlbdtrb"
                             ("sdtlbdtrb" "xG" ("slpdtcmdtrp" (DB 0) "xi"))
                             "xi")))))))))
             (EVALUATION TAG ("=" ("sdtlbdtrb" "xDiag" (DB 1)) (DB 0))))))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IMPLIES ("aElementOf" (DB 0) "xD")
          ("sdtlsdt" ("ttheCardinalityOf" ("sdtlbdtrb" "xDiag" (DB 0)))
           ("sdtlbdtrb" "xlambda" (DB 0)))))
        "__"
        (BODY
         (BLOCK (DECL "xi") ASSUMPTION ("aElementOf" "xi" "xD") "__" (BODY))
         (BLOCK (DECL "xF")
           LOWDEFINITION
           (AND
            (AND ("aFunction" "xF")
                 (DOMAIN TAG
                  ("=" ("szDzozmlpdtrp" "xF") ("sdtlbdtrb" "xkappa" "xi"))))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xF"))
              (EVALUATION TAG
               ("=" ("sdtlbdtrb" "xF" (DB 0))
                ("sdtlbdtrb" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" (DB 0) "xi"))
                 "xi"))))))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           ("=" ("sdtcflbdtrb" "xF" ("sdtlbdtrb" "xkappa" "xi"))
            ("sdtlbdtrb" "xDiag" "xi"))
           "__"
           (BODY))))
      (BLOCK (DECL "xf")
        LOWDEFINITION
        (AND
         (AND ("aFunction" "xf")
              (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xf") "xD")))
         (FORALL
          (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
           (EXISTS
            (AND
             ("aElementOf" (DB 0)
              ("sdtbsdt" ("sdtlbdtrb" "xlambda" (DB 1))
               ("sdtlbdtrb" "xDiag" (DB 1))))
             (EVALUATION TAG ("=" ("sdtlbdtrb" "xf" (DB 1)) (DB 0))))))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("aElementOf" "xf" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD"))
        "__"
        (BODY))
      (BLOCK (DECL "xj" "xm")
        SELECTION
        (AND ("aElementOf" "xj" "xD")
             (AND ("aElementOf" "xm" ("sdtlbdtrb" "xkappa" "xj"))
                  ("=" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" "xm" "xj")) "xf")))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND
         ("aElementOf"
          ("sdtlbdtrb" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" "xm" "xj")) "xj")
          ("sdtlbdtrb" "xDiag" "xj"))
         (NOT
          ("aElementOf" ("sdtlbdtrb" "xf" "xj") ("sdtlbdtrb" "xDiag" "xj"))))
        "__"
        (BODY))
      (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))))
