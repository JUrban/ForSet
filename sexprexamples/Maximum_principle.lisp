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
     (FORALL (IMPLIES (HEADTERM TAG ("aComplexNumber" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND
      (FORALL
       (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        ("aComplexNumber" (DB 0))))
      (FORALL
       (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        ("aComplexNumber" ("sdtlbdtrb" "xf" (DB 0))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES ("aElementOf" (DB 0) "xM") ("aComplexNumber" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aRealNumber" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xz") ASSUMPTION ("aComplexNumber" "xz") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sbrdtbr" "xz")))
       ("aRealNumber" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aRealNumber" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("isPositive" "xx")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aRealNumber" "xx") ("aRealNumber" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("sdtlsdt" "xx" "xy")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aRealNumber" "xx") ("aRealNumber" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES ("sdtlsdt" "xx" "xy") (NOT ("sdtlsdt" "xy" "xx")))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("isHolomorphic" "xf")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xeps" "xz")
     ASSUMPTION
     (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
          ("aComplexNumber" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
       (AND ("aSet" (DB 0)) ("aElementOf" "xz" (DB 0)))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xeps" "xz")
     ASSUMPTION
     (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
          ("aComplexNumber" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (EXISTS
      (AND ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
           ("sdtlsdt" ("sbrdtbr" "xz") ("sbrdtbr" (DB 0)))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xM") ASSUMPTION ("aSet" "xM") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isOpen" "xM"))
      (FORALL
       (IMPLIES ("aElementOf" (DB 0) "xM")
        (EXISTS
         (AND (AND ("aRealNumber" (DB 0)) ("isPositive" (DB 0)))
              ("aSubsetOf" ("szBzazlzllpdtcmdtrp" (DB 0) (DB 1)) "xM"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xeps" "xz")
     ASSUMPTION
     (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
          ("aComplexNumber" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("isOpen" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aLocalMaximalPointOf" (DB 0) "xf"))
       (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
            (EXISTS
             (AND (AND ("aRealNumber" (DB 0)) ("isPositive" (DB 0)))
                  (AND
                   ("aSubsetOf" ("szBzazlzllpdtcmdtrp" (DB 0) (DB 1))
                    ("szDzozmlpdtrp" "xf"))
                   (FORALL
                    (IMPLIES
                     ("aElementOf" (DB 0)
                      ("szBzazlzllpdtcmdtrp" (DB 1) (DB 2)))
                     (OR
                      ("=" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                       ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 2))))
                      ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                       ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 2)))))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL "xU")
     ASSUMPTION
     ("aSubsetOf" "xU" ("szDzozmlpdtrp" "xf"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isConstantOn" "xf" "xU"))
      (EXISTS
       (AND ("aComplexNumber" (DB 0))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) "xU")
              ("=" ("sdtlbdtrb" "xf" (DB 0)) (DB 1)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xf" "xeps" "xz")
     ASSUMPTION
     (AND
      (AND ("aFunction" "xf")
           (AND ("aRealNumber" "xeps") ("isPositive" "xeps")))
      ("aComplexNumber" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (AND ("isHolomorphic" "xf")
          ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")
           ("szDzozmlpdtrp" "xf")))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (NOT ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
      ("isOpen" ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))))
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
      (IMPLIES (HEADTERM TAG ("aRegion" (DB 0)))
       (AND ("aSet" (DB 0)) ("isOpen" (DB 0)))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Identity_Theorem"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (AND ("isHolomorphic" "xf") ("aRegion" ("szDzozmlpdtrp" "xf")))
     "__"
     (BODY))
   (BLOCK (DECL "xeps" "xz")
     ASSUMPTION
     (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
          ("aComplexNumber" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
      ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf")))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "Maximum_principle"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (AND ("isHolomorphic" "xf") ("aRegion" ("szDzozmlpdtrp" "xf")))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (IMPLIES (EXISTS ("aLocalMaximalPointOf" (DB 0) "xf"))
      ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf")))
     "__"
     (BODY
      (BLOCK (DECL "xz")
        ASSUMPTION
        ("aLocalMaximalPointOf" "xz" "xf")
        "__"
        (BODY))
      (BLOCK (DECL "xeps")
        SELECTION
        (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
             (AND
              ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")
               ("szDzozmlpdtrp" "xf"))
              (FORALL
               (IMPLIES
                ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
                (OR
                 ("=" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                  ("sbrdtbr" ("sdtlbdtrb" "xf" "xz")))
                 ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                  ("sbrdtbr" ("sdtlbdtrb" "xf" "xz"))))))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
        "__"
        (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           ("isOpen" ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
           "__"
           (BODY))
         (BLOCK (DECL "xdelta")
           SELECTION
           (AND (AND ("aRealNumber" "xdelta") ("isPositive" "xdelta"))
                ("aSubsetOf"
                 ("szBzazlzllpdtcmdtrp" "xdelta" ("sdtlbdtrb" "xf" "xz"))
                 ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EXISTS
            (AND ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
                 ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" "xz"))
                  ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0))))))
           "__"
           (BODY))
         (BLOCK (DECL) AFFIRMATION CONTRADICTION "__" (BODY))))
      (BLOCK (DECL)
        AFFIRMATION
        ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf"))
        "__"
        (BODY))))))
