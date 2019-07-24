(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (FORALL
       (FORALL
        (FORALL
         (IMPLIES (AND (AND (AND TRUTHTRUTH) TRUTH) TRUTH)
          (IMPLIES
           ("=" ("slpdtcmdtrp" (DB 3) (DB 2)) ("slpdtcmdtrp" (DB 1) (DB 0)))
           (AND ("=" (DB 3) (DB 1)) ("=" (DB 2) (DB 0)))))))))
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
      (IFF (HEADTERM TAG ("=" (DB 0) ("szPzrzozdlpdtcmdtrp" "xM" "xN")))
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA
                 (REPLACEMENT TAG
                  (EXISTS
                   (EXISTS
                    (AND
                     (AND ("aElementOf" (DB 1) "xM")
                      ("aElementOf" (DB 0) "xN"))
                     ("=" (DB 2) ("slpdtcmdtrp" (DB 1) (DB 0))))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  NIL
  (BODY (BLOCK (DECL "xx" "xy") ASSUMPTION (AND TRUTHTRUTH) "__" (BODY))
   (BLOCK (DECL "xM" "xN")
     ASSUMPTION
     (AND ("aSet" "xM") ("aSet" "xN"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (IMPLIES
      ("aElementOf" ("slpdtcmdtrp" "xx" "xy")
       ("szPzrzozdlpdtcmdtrp" "xM" "xN"))
      (AND ("aElementOf" "xx" "xM") ("aElementOf" "xy" "xN")))
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
     (FORALL (IMPLIES (HEADTERM TAG ("aOrdinal" (DB 0))) ("aSet" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xalpha") ASSUMPTION ("aOrdinal" "xalpha") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES ("aElementOf" (DB 0) "xalpha") ("aOrdinal" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aCardinal" (DB 0))) ("aOrdinal" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xalpha" "xbeta")
     ASSUMPTION
     (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("sdtlsdt" "xalpha" "xbeta")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xalpha" "xbeta")
     ASSUMPTION
     (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES ("sdtlsdt" "xalpha" "xbeta") ("aElementOf" "xalpha" "xbeta"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL "xM") ASSUMPTION ("aSubsetOf" "xM" "xA") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isCofinalIn" "xM" "xA"))
      (FORALL
       (IMPLIES ("aElementOf" (DB 0) "xA")
        (EXISTS (AND ("aElementOf" (DB 0) "xM") ("sdtlsdt" (DB 1) (DB 0)))))))
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
  "Surj_Exi"
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL) ASSUMPTION (EXISTS ("aElementOf" (DB 0) "xM")) "__" (BODY))
   (BLOCK (DECL "xN") ASSUMPTION ("aSet" "xN") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF
      (OR ("=" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))
          ("sdtlsdt" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN")))
      (EXISTS
       (AND ("aFunction" (DB 0))
            (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xN")
                 ("=" ("sdtcflbdtrb" (DB 0) "xN") "xM")))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Transitivity"
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL "xM") ASSUMPTION ("aElementOf" "xM" "xA") "__" (BODY))
   (BLOCK (DECL "xN") ASSUMPTION ("aElementOf" "xN" "xM") "__" (BODY))
   (BLOCK (DECL) POSIT ("aElementOf" "xN" "xA") "__" (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("ttheCardinalityOf" ("szPzrzozdlpdtcmdtrp" "xM" "xM"))
      ("ttheCardinalityOf" "xM"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL) POSIT ("=" ("ttheCardinalityOf" "xA") "xA") "__" (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL "xN") ASSUMPTION ("aSubsetOf" "xN" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (OR ("=" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM"))
         ("sdtlsdt" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM")))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isRegular" "xA"))
      (FORALL
       (IMPLIES (AND ("aSubsetOf" (DB 0) "xA") ("isCofinalIn" (DB 0) "xA"))
        ("=" ("ttheCardinalityOf" (DB 0)) "xA"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szSzuzczclpdtrp" "xA")))
       ("aCardinal" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xalpha" "xbeta")
     ASSUMPTION
     (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (OR (OR ("sdtlsdt" "xalpha" "xbeta") ("sdtlsdt" "xbeta" "xalpha"))
         ("=" "xbeta" "xalpha"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL) POSIT ("sdtlsdt" "xA" ("szSzuzczclpdtrp" "xA")) "__" (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))
       (OR ("=" ("ttheCardinalityOf" (DB 0)) "xA")
           ("sdtlsdt" ("ttheCardinalityOf" (DB 0)) "xA"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (FORALL
       (IMPLIES (AND ("aCardinal" (DB 1)) ("aCardinal" (DB 0)))
        (NOT (AND ("sdtlsdt" (DB 1) (DB 0)) ("sdtlsdt" (DB 0) (DB 1)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (NOT
      (EXISTS
       (AND ("aCardinal" (DB 0))
            (AND ("sdtlsdt" "xA" (DB 0))
                 ("sdtlsdt" (DB 0) ("szSzuzczclpdtrp" "xA"))))))
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
      (IFF (HEADTERM TAG ("=" (DB 0) ("ttheEmptySet")))
       (AND ("aCardinal" (DB 0))
            (FORALL
             (IMPLIES
              (AND ("aOrdinal" (DB 0)) (EXISTS ("aElementOf" (DB 0) (DB 1))))
              ("aElementOf" (DB 1) (DB 0)))))))
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
      (IFF (HEADTERM TAG ("=" (DB 0) ("ttheConstantZeroOn" "xM")))
       (AND ("aFunction" (DB 0))
            (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xM")
                 (FORALL
                  (IMPLIES ("aElementOf" (DB 0) "xM")
                   ("=" ("sdtlbdtrb" (DB 1) (DB 0)) ("ttheEmptySet"))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  NIL
  (BODY (BLOCK (DECL "xA") ASSUMPTION ("aCardinal" "xA") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("isRegular" ("szSzuzczclpdtrp" "xA"))
     "__"
     (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
      (BLOCK (DECL "xx")
        SELECTION
        (AND
         (AND ("aSubsetOf" "xx" ("szSzuzczclpdtrp" "xA"))
              ("isCofinalIn" "xx" ("szSzuzczclpdtrp" "xA")))
         (NOT ("=" ("ttheCardinalityOf" "xx") ("szSzuzczclpdtrp" "xA"))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (OR ("=" ("ttheCardinalityOf" "xx") "xA")
            ("sdtlsdt" ("ttheCardinalityOf" "xx") "xA"))
        "__"
        (BODY))
      (BLOCK (DECL "xf")
        SELECTION
        (AND ("aFunction" "xf")
             (AND ("=" ("szDzozmlpdtrp" "xf") "xA")
                  ("=" ("sdtcflbdtrb" "xf" "xA") "xx")))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (AND (EXISTS ("aElementOf" (DB 0) "xx"))
                ("=" ("ttheCardinalityOf" "xA") "xA"))
           "__"
           (BODY))))
      (BLOCK (DECL "xg")
        LOWDEFINITION
        (AND
         (AND ("aFunction" "xg")
              (DOMAIN TAG
               ("=" ("szDzozmlpdtrp" "xg") ("szSzuzczclpdtrp" "xA"))))
         (FORALL
          (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xg"))
           (AND
            (CONDITION TAG
             (IMPLIES (EXISTS ("aElementOf" (DB 0) (DB 1)))
              (EXISTS
               (AND
                (AND ("aFunction" (DB 0))
                     (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xA")
                          ("=" ("sdtcflbdtrb" (DB 0) "xA") (DB 1))))
                (EVALUATION TAG ("=" ("sdtlbdtrb" "xg" (DB 1)) (DB 0)))))))
            (CONDITION TAG
             (IMPLIES (NOT (EXISTS ("aElementOf" (DB 0) (DB 1))))
              (EVALUATION TAG
               ("=" ("sdtlbdtrb" "xg" (DB 0))
                ("ttheConstantZeroOn" "xA")))))))))
        "__"
        (BODY))
      (BLOCK (DECL "xh")
        LOWDEFINITION
        (AND
         (AND ("aFunction" "xh")
              (DOMAIN TAG
               ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))
         (FORALL
          (FORALL
           (IMPLIES
            ("aElementOf" ("slpdtcmdtrp" (DB 1) (DB 0)) ("szDzozmlpdtrp" "xh"))
            (EVALUATION TAG
             ("=" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" (DB 1) (DB 0)))
              ("sdtlbdtrb" ("sdtlbdtrb" "xg" ("sdtlbdtrb" "xf" (DB 1)))
               (DB 0))))))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
             ("=" ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
              ("szSzuzczclpdtrp" "xA")))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (FORALL
            (IMPLIES ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))
             ("aElementOf" (DB 0)
              ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA")))))
           "__"
           (BODY
            (BLOCK (DECL "xn")
              ASSUMPTION
              ("aElementOf" "xn" ("szSzuzczclpdtrp" "xA"))
              "__"
              (BODY))
            (BLOCK (DECL "xxi")
              SELECTION
              (AND ("aElementOf" "xxi" "xA")
                   ("sdtlsdt" "xn" ("sdtlbdtrb" "xf" "xxi")))
              "__"
              (BODY))
            (BLOCK (DECL "xzeta")
              SELECTION
              (AND ("aElementOf" "xzeta" "xA")
                   ("="
                    ("sdtlbdtrb" ("sdtlbdtrb" "xg" ("sdtlbdtrb" "xf" "xxi"))
                     "xzeta")
                    "xn"))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("=" "xn" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" "xxi" "xzeta")))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("#TH#")
              "__"
              (BODY
               (BLOCK (DECL)
                 AFFIRMATION
                 ("aElementOf" ("slpdtcmdtrp" "xxi" "xzeta")
                  ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
                 "__"
                 (BODY))))))
         (BLOCK (DECL)
           AFFIRMATION
           (FORALL
            (IMPLIES
             ("aElementOf" (DB 0)
              ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
             ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))))
           "__"
           (BODY
            (BLOCK (DECL "xn")
              ASSUMPTION
              ("aElementOf" "xn"
               ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
              "__"
              (BODY))
            (BLOCK (DECL "xa" "xb")
              SELECTION
              (AND (AND ("aElementOf" "xa" "xA") ("aElementOf" "xb" "xA"))
                   ("=" "xn" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" "xa" "xb"))))
              "__"
              (BODY))
            (BLOCK (DECL)
              CASEHYPOTHESIS
              (IMPLIES
               (CASEHYPOTHESIS TAG
                (EXISTS ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" "xa"))))
               ("#TH#"))
              "__"
              (BODY))
            (BLOCK (DECL)
              CASEHYPOTHESIS
              (IMPLIES
               (CASEHYPOTHESIS TAG
                (NOT (EXISTS ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" "xa")))))
               ("#TH#"))
              "__"
              (BODY))))))
      (BLOCK (DECL)
        AFFIRMATION
        (OR ("=" ("szSzuzczclpdtrp" "xA") "xA")
            ("sdtlsdt" ("szSzuzczclpdtrp" "xA") "xA"))
        "__"
        (BODY))
      (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))))
