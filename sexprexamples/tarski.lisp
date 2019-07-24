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
  AXIOM
  "?"
  "EOfElem"
  (BODY (BLOCK (DECL "xS") ASSUMPTION ("aSet" "xS") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES ("aElementOf" (DB 0) "xS") ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefEmpty"
  (BODY (BLOCK (DECL "xS") ASSUMPTION ("aSet" "xS") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isEmpty" "xS"))
      (NOT (EXISTS ("aElementOf" (DB 0) "xS"))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefSub"
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
  "LessRel"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("sdtlseqdt" "xx" "xy")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "ARefl"
  (BODY (BLOCK (DECL "xx") ASSUMPTION ("aElement" "xx") "__" (BODY))
   (BLOCK (DECL) POSIT ("sdtlseqdt" "xx" "xx") "__" (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "ASymm"
  (BODY
   (BLOCK (DECL "xx" "xy")
     ASSUMPTION
     (AND ("aElement" "xx") ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (AND ("sdtlseqdt" "xx" "xy") ("sdtlseqdt" "xy" "xx"))
      ("=" "xx" "xy"))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "Trans"
  (BODY
   (BLOCK (DECL "xx" "xy" "xz")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (AND ("sdtlseqdt" "xx" "xy") ("sdtlseqdt" "xy" "xz"))
      ("sdtlseqdt" "xx" "xz"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefLB"
  (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSet" "xT") "__" (BODY))
   (BLOCK (DECL "xS") ASSUMPTION ("aSubsetOf" "xS" "xT") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aLowerBoundOfIn" (DB 0) "xS" "xT"))
       (AND ("aElementOf" (DB 0) "xT")
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) "xS")
              ("sdtlseqdt" (DB 1) (DB 0)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefUB"
  (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSet" "xT") "__" (BODY))
   (BLOCK (DECL "xS") ASSUMPTION ("aSubsetOf" "xS" "xT") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aUpperBoundOfIn" (DB 0) "xS" "xT"))
       (AND ("aElementOf" (DB 0) "xT")
            (FORALL
             (IMPLIES ("aElementOf" (DB 0) "xS")
              ("sdtlseqdt" (DB 0) (DB 1)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefInf"
  (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSet" "xT") "__" (BODY))
   (BLOCK (DECL "xS") ASSUMPTION ("aSubsetOf" "xS" "xT") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aInfimumOfIn" (DB 0) "xS" "xT"))
       (AND ("aElementOf" (DB 0) "xT")
            (AND ("aLowerBoundOfIn" (DB 0) "xS" "xT")
                 (FORALL
                  (IMPLIES ("aLowerBoundOfIn" (DB 0) "xS" "xT")
                   ("sdtlseqdt" (DB 0) (DB 1))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefSup"
  (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSet" "xT") "__" (BODY))
   (BLOCK (DECL "xS") ASSUMPTION ("aSubsetOf" "xS" "xT") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aSupremumOfIn" (DB 0) "xS" "xT"))
       (AND ("aElementOf" (DB 0) "xT")
            (AND ("aUpperBoundOfIn" (DB 0) "xS" "xT")
                 (FORALL
                  (IMPLIES ("aUpperBoundOfIn" (DB 0) "xS" "xT")
                   ("sdtlseqdt" (DB 1) (DB 0))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "SupUn"
  (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSet" "xT") "__" (BODY))
   (BLOCK (DECL "xS") ASSUMPTION ("aSubsetOf" "xS" "xT") "__" (BODY))
   (BLOCK (DECL "xu" "xv")
     ASSUMPTION
     (AND ("aSupremumOfIn" "xu" "xS" "xT") ("aSupremumOfIn" "xv" "xS" "xT"))
     "__"
     (BODY))
   (BLOCK (DECL) AFFIRMATION ("=" "xu" "xv") "__" (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "InfUn"
  (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSet" "xT") "__" (BODY))
   (BLOCK (DECL "xS") ASSUMPTION ("aSubsetOf" "xS" "xT") "__" (BODY))
   (BLOCK (DECL "xu" "xv")
     ASSUMPTION
     (AND ("aInfimumOfIn" "xu" "xS" "xT") ("aInfimumOfIn" "xv" "xS" "xT"))
     "__"
     (BODY))
   (BLOCK (DECL) AFFIRMATION ("=" "xu" "xv") "__" (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefCLat"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aCompleteLattice" (DB 0)))
       (AND ("aSet" (DB 0))
            (FORALL
             (IMPLIES ("aSubsetOf" (DB 0) (DB 1))
              (EXISTS
               (AND ("aInfimumOfIn" (DB 0) (DB 1) (DB 2))
                    (EXISTS ("aSupremumOfIn" (DB 0) (DB 2) (DB 3))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  NIL
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL) POSIT ("aSet" ("szDzozmlpdtrp" "xf")) "__" (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "RanSort"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szRzaznlpdtrp" "xf")))
       ("aSet" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefDom"
  (BODY
   (BLOCK (DECL "xf" "xS")
     ASSUMPTION
     (AND ("aFunction" "xf") ("aSet" "xS"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isOn" "xf" "xS"))
      (AND ("=" ("szDzozmlpdtrp" "xf") ("szRzaznlpdtrp" "xf"))
           ("=" ("szRzaznlpdtrp" "xf") "xS")))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "ImgSort"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL "xx")
     ASSUMPTION
     ("aElementOf" "xx" ("szDzozmlpdtrp" "xf"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     ("aElementOf" ("sdtlbdtrb" "xf" "xx") ("szRzaznlpdtrp" "xf"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefFix"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aFixedPointOf" (DB 0) "xf"))
       (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
            ("=" ("sdtlbdtrb" "xf" (DB 0)) (DB 0)))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "DefMonot"
  (BODY (BLOCK (DECL "xf") ASSUMPTION ("aFunction" "xf") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isMonotone" "xf"))
      (FORALL
       (FORALL
        (IMPLIES
         (AND ("aElementOf" (DB 1) ("szDzozmlpdtrp" "xf"))
              ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf")))
         (IMPLIES ("sdtlseqdt" (DB 1) (DB 0))
          ("sdtlseqdt" ("sdtlbdtrb" "xf" (DB 1))
           ("sdtlbdtrb" "xf" (DB 0))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "Tarski"
  (BODY
   (BLOCK (DECL "xU" "xf")
     ASSUMPTION
     (AND ("aCompleteLattice" "xU")
          (AND ("aFunction" "xf")
               (AND ("isMonotone" "xf") ("isOn" "xf" "xU"))))
     "__"
     (BODY))
   (BLOCK (DECL "xS")
     ASSUMPTION
     (AND ("aSet" "xS") ("=" "xS" (LAMBDA ("aFixedPointOf" (DB 0) "xf"))))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     ("aCompleteLattice" "xS")
     "__"
     (BODY (BLOCK (DECL "xT") ASSUMPTION ("aSubsetOf" "xT" "xS") "__" (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (EXISTS ("aSupremumOfIn" (DB 0) "xT" "xS"))
        "__"
        (BODY
         (BLOCK (DECL "xP")
           LOWDEFINITION
           (AND ("aSet" "xP")
                ("=" "xP"
                 (LAMBDA
                     (AND ("aElementOf" (DB 0) "xU")
                      (AND ("sdtlseqdt" ("sdtlbdtrb" "xf" (DB 0)) (DB 0))
                       ("aUpperBoundOfIn" (DB 0) "xT" "xU"))))))
           "__"
           (BODY))
         (BLOCK (DECL "xp")
           SELECTION
           ("aInfimumOfIn" "xp" "xP" "xU")
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aLowerBoundOfIn" ("sdtlbdtrb" "xf" "xp") "xP" "xU")
                ("aUpperBoundOfIn" ("sdtlbdtrb" "xf" "xp") "xT" "xU"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aFixedPointOf" "xp" "xf") ("aSupremumOfIn" "xp" "xT" "xS"))
           "__"
           (BODY))))
      (BLOCK (DECL)
        AFFIRMATION
        (EXISTS ("aInfimumOfIn" (DB 0) "xT" "xS"))
        "__"
        (BODY
         (BLOCK (DECL "xQ")
           LOWDEFINITION
           (AND ("aSet" "xQ")
                ("=" "xQ"
                 (LAMBDA
                     (AND ("aElementOf" (DB 0) "xU")
                      (AND ("sdtlseqdt" (DB 0) ("sdtlbdtrb" "xf" (DB 0)))
                       ("aLowerBoundOfIn" (DB 0) "xT" "xU"))))))
           "__"
           (BODY))
         (BLOCK (DECL "xq")
           SELECTION
           ("aSupremumOfIn" "xq" "xQ" "xU")
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aUpperBoundOfIn" ("sdtlbdtrb" "xf" "xq") "xQ" "xU")
                ("aLowerBoundOfIn" ("sdtlbdtrb" "xf" "xq") "xT" "xU"))
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           (AND ("aFixedPointOf" "xq" "xf") ("aInfimumOfIn" "xq" "xT" "xS"))
           "__"
           (BODY))))))))
