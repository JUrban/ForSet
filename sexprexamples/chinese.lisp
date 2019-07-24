(BLOCK (DECL)
  SIGNATURE
  "?"
  "ElmSort"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "SortsC"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz0"))) ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "SortsC"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz1"))) ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "SortsU"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("smndt" "xx"))) ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "SortsB"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtpldt" "xx" "xy")))
       ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "SortsB"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xx" "xy")))
       ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddComm"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtpldt" "xx" "xy") ("sdtpldt" "xy" "xx"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddAsso"
  (BODY
   (BLOCK (DECL "xx" "xy" "xz")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtpldt" ("sdtpldt" "xx" "xy") "xz")
      ("sdtpldt" "xx" ("sdtpldt" "xy" "xz")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddBubble"
  (BODY
   (BLOCK (DECL "xx" "xy" "xz")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtpldt" "xx" ("sdtpldt" "xy" "xz"))
      ("sdtpldt" "xy" ("sdtpldt" "xx" "xz")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddZero"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtpldt" "xx" ("sz0")) "xx")
          ("=" "xx" ("sdtpldt" ("sz0") "xx")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AddInvr"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtpldt" "xx" ("smndt" "xx")) ("sz0"))
          ("=" ("sz0") ("sdtpldt" ("smndt" "xx") "xx")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulComm"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xx" "xy") ("sdtasdt" "xy" "xx"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulAsso"
  (BODY
   (BLOCK (DECL "xx" "xy" "xz")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" ("sdtasdt" "xx" "xy") "xz")
      ("sdtasdt" "xx" ("sdtasdt" "xy" "xz")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulBubble"
  (BODY
   (BLOCK (DECL "xx" "xy" "xz")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xx" ("sdtasdt" "xy" "xz"))
      ("sdtasdt" "xy" ("sdtasdt" "xx" "xz")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulUnit"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtasdt" "xx" ("sz1")) "xx")
          ("=" "xx" ("sdtasdt" ("sz1") "xx")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AMDistr1"
  (BODY
   (BLOCK (DECL "xx" "xy" "xz")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" "xx" ("sdtpldt" "xy" "xz"))
      ("sdtpldt" ("sdtasdt" "xx" "xy") ("sdtasdt" "xx" "xz")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "AMDistr2"
  (BODY
   (BLOCK (DECL "xy" "xz" "xx")
     ASSUMPTION
     (AND (AND ("aElement" "xy") ("aElement" "xz")) ("aElement" "xx"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("=" ("sdtasdt" ("sdtpldt" "xy" "xz") "xx")
      ("sdtpldt" ("sdtasdt" "xy" "xx") ("sdtasdt" "xz" "xx")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "MulMnOne"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (AND ("=" ("sdtasdt" ("smndt" ("sz1")) "xx") ("smndt" "xx"))
          ("=" ("smndt" "xx") ("sdtasdt" "xx" ("smndt" ("sz1")))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "MulZero"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (AND ("=" ("sdtasdt" "xx" ("sz0")) ("sz0"))
          ("=" ("sz0") ("sdtasdt" ("sz0") "xx")))
     "__"
     (BODY
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("sdtasdt" "xx" ("sz0")) ("sz0"))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtasdt" "xx" ("sz0"))
             ("sdtpldt" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sz0")))))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtasdt" "xx" ("sz0"))
                ("sdtasdt" "xx" ("sdtpldt" ("sz0") ("sz0")))))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtasdt" "xx" ("sdtpldt" ("sz0") ("sz0")))
                ("sdtpldt" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sz0")))))
              "__"
              (BODY))))))
      (BLOCK (DECL)
        AFFIRMATION
        ("=" ("sdtasdt" ("sz0") "xx") ("sz0"))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtasdt" ("sz0") "xx")
             ("sdtpldt" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sz0") "xx"))))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtasdt" ("sz0") "xx")
                ("sdtasdt" ("sdtpldt" ("sz0") ("sz0")) "xx")))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtasdt" ("sdtpldt" ("sz0") ("sz0")) "xx")
                ("sdtpldt" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sz0") "xx"))))
              "__"
              (BODY))))))))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Cancel"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (AND (NOT ("=" "xx" ("sz0"))) (NOT ("=" "xy" ("sz0"))))
      (NOT ("=" ("sdtasdt" "xx" "xy") ("sz0"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "UnNeZr"
  (BODY (BLOCK (DECL) POSIT (NOT ("=" ("sz1") ("sz0"))) "__" (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xX") ASSUMPTION ("aSet" "xX") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES ("aElementOf" (DB 0) "xX") ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "SetEq"
  (BODY
   (BLOCK (DECL "xX" "xY")
     ASSUMPTION
     (AND ("aSet" "xX") ("aSet" "xY"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES
      (AND
       (FORALL (IMPLIES ("aElementOf" (DB 0) "xX") ("aElementOf" (DB 0) "xY")))
       (FORALL
        (IMPLIES ("aElementOf" (DB 0) "xY") ("aElementOf" (DB 0) "xX"))))
      ("=" "xX" "xY"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefSSum"
  (BODY
   (BLOCK (DECL "xX" "xY")
     ASSUMPTION
     (AND ("aSet" "xX") ("aSet" "xY"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sdtplqtdt" "xX" "xY")))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElement" (DB 0))
              (IFF ("aElementOf" (DB 0) (DB 1))
               (EXISTS
                (AND ("aElementOf" (DB 0) "xX")
                     (EXISTS
                      (AND ("aElementOf" (DB 0) "xY")
                           ("=" (DB 2) ("sdtpldt" (DB 1) (DB 0)))))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefSInt"
  (BODY
   (BLOCK (DECL "xX" "xY")
     ASSUMPTION
     (AND ("aSet" "xX") ("aSet" "xY"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("sdtasasdt" "xX" "xY")))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElement" (DB 0))
              (IFF ("aElementOf" (DB 0) ("sdtplqtdt" "xX" "xY"))
               (AND ("aElementOf" (DB 0) "xX")
                    ("aElementOf" (DB 0) "xY"))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefIdeal"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aIdeal" (DB 0)))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) (DB 1))
              (AND
               (FORALL
                (IMPLIES ("aElementOf" (DB 0) (DB 2))
                 ("aElementOf" ("sdtpldt" (DB 1) (DB 0)) (DB 2))))
               (FORALL
                (IMPLIES ("aElement" (DB 0))
                 ("aElementOf" ("sdtasdt" (DB 0) (DB 1)) (DB 2))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "IdeSum"
  (BODY
   (BLOCK (DECL "xI" "xJ")
     ASSUMPTION
     (AND ("aIdeal" "xI") ("aIdeal" "xJ"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("aIdeal" ("sdtplqtdt" "xI" "xJ"))
     "__"
     (BODY
      (BLOCK (DECL "xx")
        ASSUMPTION
        ("aElementOf" "xx" ("sdtplqtdt" "xI" "xJ"))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IMPLIES ("aElementOf" (DB 0) ("sdtplqtdt" "xI" "xJ"))
          ("aElementOf" ("sdtpldt" "xx" (DB 0)) ("sdtplqtdt" "xI" "xJ"))))
        "__"
        (BODY
         (BLOCK (DECL "xy")
           ASSUMPTION
           ("aElementOf" "xy" ("sdtplqtdt" "xI" "xJ"))
           "__"
           (BODY))
         (BLOCK (DECL "xk" "xl")
           SELECTION
           (AND ("aElementOf" "xk" "xI")
                (AND ("aElementOf" "xl" "xJ")
                     ("=" "xx" ("sdtpldt" "xk" "xl"))))
           "1"
           (BODY))
         (BLOCK (DECL "xm" "xn")
           SELECTION
           (AND ("aElementOf" "xm" "xI")
                (AND ("aElementOf" "xn" "xJ")
                     ("=" "xy" ("sdtpldt" "xm" "xn"))))
           "2"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aElementOf" ("sdtpldt" "xk" "xm") "xI")
                ("aElementOf" ("sdtpldt" "xl" "xn") "xJ"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtpldt" "xx" "xy")
             ("sdtpldt" ("sdtpldt" "xk" "xm") ("sdtpldt" "xl" "xn"))))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtpldt" "xx" "xy")
                ("sdtpldt" ("sdtpldt" "xk" "xm") ("sdtpldt" "xl" "xn"))))
              "__"
              (BODY))))
         (BLOCK (DECL) AFFIRMATION ("#TH#") "__" (BODY))))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IMPLIES ("aElement" (DB 0))
          ("aElementOf" ("sdtasdt" (DB 0) "xx") ("sdtplqtdt" "xI" "xJ"))))
        "__"
        (BODY (BLOCK (DECL "xz") ASSUMPTION ("aElement" "xz") "__" (BODY))
         (BLOCK (DECL "xk" "xl")
           SELECTION
           (AND ("aElementOf" "xk" "xI")
                (AND ("aElementOf" "xl" "xJ")
                     ("=" "xx" ("sdtpldt" "xk" "xl"))))
           "1"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aElementOf" ("sdtasdt" "xz" "xk") "xI")
                ("aElementOf" ("sdtasdt" "xz" "xl") "xJ"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtasdt" "xz" "xx")
             ("sdtpldt" ("sdtasdt" "xz" "xk") ("sdtasdt" "xz" "xl"))))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtasdt" "xz" "xx")
                ("sdtpldt" ("sdtasdt" "xz" "xk") ("sdtasdt" "xz" "xl"))))
              "__"
              (BODY))))
         (BLOCK (DECL) AFFIRMATION ("#TH#") "__" (BODY))))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "IdeInt"
  (BODY
   (BLOCK (DECL "xI" "xJ")
     ASSUMPTION
     (AND ("aIdeal" "xI") ("aIdeal" "xJ"))
     "__"
     (BODY))
   (BLOCK (DECL) AFFIRMATION ("aIdeal" ("sdtasasdt" "xI" "xJ")) "__" (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefMod"
  (BODY
   (BLOCK (DECL "xx" "xy" "xI")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aIdeal" "xI"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("sdteqdtlpzmzozddtrp" "xx" "xy" "xI"))
      ("aElementOf" ("sdtpldt" "xx" ("smndt" "xy")) "xI"))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "ChineseRemainder"
  (BODY
   (BLOCK (DECL "xI" "xJ")
     ASSUMPTION
     (AND ("aIdeal" "xI") ("aIdeal" "xJ"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (FORALL
      (IMPLIES ("aElement" (DB 0))
       ("aElementOf" (DB 0) ("sdtplqtdt" "xI" "xJ"))))
     "__"
     (BODY))
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (EXISTS
      (AND ("aElement" (DB 0))
           (AND ("sdteqdtlpzmzozddtrp" (DB 0) "xx" "xI")
                ("sdteqdtlpzmzozddtrp" (DB 0) "xy" "xJ"))))
     "__"
     (BODY
      (BLOCK (DECL "xa" "xb")
        SELECTION
        (AND ("aElementOf" "xa" "xI")
             (AND ("aElementOf" "xb" "xJ")
                  ("=" ("sdtpldt" "xa" "xb") ("sz1"))))
        "__"
        (BODY))
      (BLOCK (DECL "xw")
        SELECTION
        ("=" "xw" ("sdtpldt" ("sdtasdt" "xy" "xa") ("sdtasdt" "xx" "xb")))
        "1"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND ("sdteqdtlpzmzozddtrp" "xw" "xx" "xI")
             ("sdteqdtlpzmzozddtrp" "xw" "xy" "xJ"))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           ("aElementOf" ("sdtpldt" "xw" ("smndt" "xx")) "xI")
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              ("=" ("sdtpldt" "xw" ("smndt" "xx"))
               ("sdtpldt" ("sdtasdt" "xy" "xa")
                ("sdtpldt" ("sdtasdt" "xx" "xb") ("smndt" "xx"))))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("aElementOf" ("sdtasdt" "xx" ("sdtpldt" "xb" ("smndt" ("sz1"))))
               "xI")
              "__"
              (BODY))))
         (BLOCK (DECL)
           AFFIRMATION
           ("aElementOf" ("sdtpldt" "xw" ("smndt" "xy")) "xJ")
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              ("=" ("sdtpldt" "xw" ("smndt" "xy"))
               ("sdtpldt" ("sdtasdt" "xx" "xb")
                ("sdtpldt" ("sdtasdt" "xy" "xa") ("smndt" "xy"))))
              "__"
              (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("aElementOf" ("sdtasdt" "xy" ("sdtpldt" "xa" ("smndt" ("sz1"))))
               "xJ")
              "__"
              (BODY))))))))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "NatSort"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aNaturalNumber" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "EucSort"
  (BODY
   (BLOCK (DECL "xx")
     ASSUMPTION
     (AND ("aElement" "xx") (NOT ("=" "xx" ("sz0"))))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sbrdtbr" "xx")))
       ("aNaturalNumber" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Division"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) (NOT ("=" "xy" ("sz0"))))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (EXISTS
      (EXISTS
       (AND (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
            (AND ("=" "xx" ("sdtpldt" ("sdtasdt" (DB 1) "xy") (DB 0)))
                 (IMPLIES (NOT ("=" (DB 0) ("sz0")))
                  ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" "xy")))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefDiv"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("doDivides" "xx" "xy"))
      (EXISTS (AND ("aElement" (DB 0)) ("=" ("sdtasdt" "xx" (DB 0)) "xy"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefDvs"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aDivisorOf" (DB 0) "xx"))
       (AND ("aElement" (DB 0)) ("doDivides" (DB 0) "xx"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefGCD"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aGcdOfAnd" (DB 0) "xx" "xy"))
       (AND (AND ("aDivisorOf" (DB 0) "xx") ("aDivisorOf" (DB 0) "xy"))
            (FORALL
             (IMPLIES
              (AND ("aDivisorOf" (DB 0) "xx") ("aDivisorOf" (DB 0) "xy"))
              ("doDivides" (DB 0) (DB 1)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefRel"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("misRelativelyPrime" "xx" "xy"))
      ("aGcdOfAnd" ("sz1") "xx" "xy"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefPrIdeal"
  (BODY (BLOCK (DECL "xc") ASSUMPTION ("aElement" "xc") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("=" (DB 0) ("slsdtgt" "xc")))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aElement" (DB 0))
              (IFF ("aElementOf" (DB 0) (DB 1))
               (EXISTS
                (AND ("aElement" (DB 0))
                     ("=" (DB 1) ("sdtasdt" "xc" (DB 0)))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "PrIdeal"
  (BODY (BLOCK (DECL "xc") ASSUMPTION ("aElement" "xc") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("aIdeal" ("slsdtgt" "xc"))
     "__"
     (BODY
      (BLOCK (DECL "xx")
        ASSUMPTION
        ("aElementOf" "xx" ("slsdtgt" "xc"))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IMPLIES ("aElementOf" (DB 0) ("slsdtgt" "xc"))
          ("aElementOf" ("sdtpldt" "xx" (DB 0)) ("slsdtgt" "xc"))))
        "__"
        (BODY
         (BLOCK (DECL "xy")
           ASSUMPTION
           ("aElementOf" "xy" ("slsdtgt" "xc"))
           "__"
           (BODY))
         (BLOCK (DECL "xu")
           SELECTION
           (AND ("aElement" "xu") ("=" ("sdtasdt" "xc" "xu") "xx"))
           "1"
           (BODY))
         (BLOCK (DECL "xv")
           SELECTION
           (AND ("aElement" "xv") ("=" ("sdtasdt" "xc" "xv") "xy"))
           "2"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtpldt" "xx" "xy") ("sdtasdt" "xc" ("sdtpldt" "xu" "xv"))))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtpldt" "xx" "xy")
                ("sdtasdt" "xc" ("sdtpldt" "xu" "xv"))))
              "__"
              (BODY))))
         (BLOCK (DECL) AFFIRMATION ("#TH#") "__" (BODY))))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (IMPLIES ("aElement" (DB 0))
          ("aElementOf" ("sdtasdt" (DB 0) "xx") ("slsdtgt" "xc"))))
        "__"
        (BODY (BLOCK (DECL "xz") ASSUMPTION ("aElement" "xz") "__" (BODY))
         (BLOCK (DECL "xu")
           SELECTION
           (AND ("aElement" "xu") ("=" ("sdtasdt" "xc" "xu") "xx"))
           "1"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EQUALITYCHAIN TAG
            ("=" ("sdtasdt" "xz" "xx") ("sdtasdt" "xc" ("sdtasdt" "xu" "xz"))))
           "__"
           (BODY
            (BLOCK (DECL)
              AFFIRMATION
              (EQUALITYCHAIN TAG
               ("=" ("sdtasdt" "xz" "xx")
                ("sdtasdt" "xc" ("sdtasdt" "xu" "xz"))))
              "__"
              (BODY))))
         (BLOCK (DECL) AFFIRMATION ("#TH#") "__" (BODY))))))))
(BLOCK (DECL)
  THEOREM
  "?"
  "GCDin"
  (BODY
   (BLOCK (DECL "xa" "xb")
     ASSUMPTION
     (AND ("aElement" "xa") ("aElement" "xb"))
     "__"
     (BODY))
   (BLOCK (DECL)
     ASSUMPTION
     (OR (NOT ("=" "xa" ("sz0"))) (NOT ("=" "xb" ("sz0"))))
     "__"
     (BODY))
   (BLOCK (DECL "xc") ASSUMPTION ("aGcdOfAnd" "xc" "xa" "xb") "__" (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("aElementOf" "xc" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
     "__"
     (BODY
      (BLOCK (DECL "xI")
        SELECTION
        (AND ("aIdeal" "xI")
             ("=" "xI" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb"))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (AND
         (AND ("aElementOf" ("sz0") ("slsdtgt" "xa"))
              ("aElementOf" "xa" ("slsdtgt" "xa")))
         (AND ("aElementOf" ("sz0") ("slsdtgt" "xb"))
              ("aElementOf" "xb" ("slsdtgt" "xb"))))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (EXISTS
         (AND
          ("aElementOf" (DB 0) ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
          (NOT ("=" (DB 0) ("sz0")))))
        "__"
        (BODY
         (BLOCK (DECL)
           AFFIRMATION
           (AND
            ("aElementOf" "xa" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
            ("aElementOf" "xb"
             ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb"))))
           "__"
           (BODY))))
      (BLOCK (DECL "xu")
        SELECTION
        (AND ("aElementOf" "xu" "xI")
             (AND (NOT ("=" "xu" ("sz0")))
                  (FORALL
                   (IMPLIES
                    (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
                    (NOT ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" "xu")))))))
        "__"
        (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (FORALL
            (IMPLIES
             (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
             (IMPLIES
              (INDUCTIONHYPOTHESIS TAG
               (FORALL
                (IMPLIES
                 (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
                 (IMPLIES ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))
                  (EXISTS
                   (AND ("aElementOf" (DB 0) "xI")
                        (AND (NOT ("=" (DB 0) ("sz0")))
                             (FORALL
                              (IMPLIES
                               (AND ("aElementOf" (DB 0) "xI")
                                    (NOT ("=" (DB 0) ("sz0"))))
                               (NOT
                                ("iLess" ("sbrdtbr" (DB 0))
                                 ("sbrdtbr" (DB 1)))))))))))))
              (EXISTS
               (AND ("aElementOf" (DB 0) "xI")
                    (AND (NOT ("=" (DB 0) ("sz0")))
                         (FORALL
                          (IMPLIES
                           (AND ("aElementOf" (DB 0) "xI")
                                (NOT ("=" (DB 0) ("sz0"))))
                           (NOT
                            ("iLess" ("sbrdtbr" (DB 0))
                             ("sbrdtbr" (DB 1))))))))))))
           "__"
           (BODY))))
      (BLOCK (DECL)
        AFFIRMATION
        (AND ("aDivisorOf" "xu" "xa") ("aDivisorOf" "xu" "xb"))
        "__"
        (BODY (BLOCK (DECL) ASSUMPTION (NOT ("#TH#")) "__" (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (EXISTS
            (EXISTS
             (AND (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
                  ("=" "xu"
                   ("sdtpldt" ("sdtasdt" "xa" (DB 1))
                    ("sdtasdt" "xb" (DB 0)))))))
           "__"
           (BODY
            (BLOCK (DECL "xk" "xl")
              SELECTION
              (AND ("aElementOf" "xk" ("slsdtgt" "xa"))
                   (AND ("aElementOf" "xl" ("slsdtgt" "xb"))
                        ("=" "xu" ("sdtpldt" "xk" "xl"))))
              "__"
              (BODY))
            (BLOCK (DECL "xx" "xy")
              SELECTION
              (AND (AND ("aElement" "xx") ("aElement" "xy"))
                   (AND ("=" "xk" ("sdtasdt" "xa" "xx"))
                        ("=" "xl" ("sdtasdt" "xb" "xy"))))
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION ("#TH#") "__" (BODY))))
         (BLOCK (DECL)
           CASEHYPOTHESIS
           (IMPLIES (CASEHYPOTHESIS TAG (NOT ("doDivides" "xu" "xa")))
            ("#TH#"))
           "__"
           (BODY
            (BLOCK (DECL "xq" "xr")
              SELECTION
              (AND (AND ("aElement" "xq") ("aElement" "xr"))
                   (AND ("=" "xa" ("sdtpldt" ("sdtasdt" "xq" "xu") "xr"))
                        (OR ("=" "xr" ("sz0"))
                            ("iLess" ("sbrdtbr" "xr") ("sbrdtbr" "xu")))))
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION (NOT ("=" "xr" ("sz0"))) "__" (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("aElementOf" ("smndt" ("sdtasdt" "xq" "xu")) "xI")
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION ("aElementOf" "xa" "xI") "__" (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("=" "xr" ("sdtpldt" ("smndt" ("sdtasdt" "xq" "xu")) "xa"))
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION ("aElementOf" "xr" "xI") "__" (BODY))))
         (BLOCK (DECL)
           CASEHYPOTHESIS
           (IMPLIES (CASEHYPOTHESIS TAG (NOT ("doDivides" "xu" "xb")))
            ("#TH#"))
           "__"
           (BODY
            (BLOCK (DECL "xq" "xr")
              SELECTION
              (AND (AND ("aElement" "xq") ("aElement" "xr"))
                   (AND ("=" "xb" ("sdtpldt" ("sdtasdt" "xq" "xu") "xr"))
                        (OR ("=" "xr" ("sz0"))
                            ("iLess" ("sbrdtbr" "xr") ("sbrdtbr" "xu")))))
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION (NOT ("=" "xr" ("sz0"))) "__" (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("aElementOf" ("smndt" ("sdtasdt" "xq" "xu")) "xI")
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION ("aElementOf" "xb" "xI") "__" (BODY))
            (BLOCK (DECL)
              AFFIRMATION
              ("=" "xr" ("sdtpldt" ("smndt" ("sdtasdt" "xq" "xu")) "xb"))
              "__"
              (BODY))
            (BLOCK (DECL) AFFIRMATION ("aElementOf" "xr" "xI") "__" (BODY))))))
      (BLOCK (DECL) AFFIRMATION ("doDivides" "xu" "xc") "__" (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        ("#TH#")
        "__"
        (BODY
         (BLOCK (DECL "xz")
           SELECTION
           (AND ("aElement" "xz") ("=" "xc" ("sdtasdt" "xz" "xu")))
           "__"
           (BODY))
         (BLOCK (DECL) AFFIRMATION ("aElementOf" "xc" "xI") "__" (BODY))))))))
