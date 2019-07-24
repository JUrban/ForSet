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
  "RelSort"
  (BODY
   (BLOCK (DECL)
     POSIT
     (FORALL (IMPLIES (HEADTERM TAG ("aRewritingSystem" (DB 0))) TRUTH))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  "Reduct"
  (BODY
   (BLOCK (DECL "xx" "xR")
     ASSUMPTION
     (AND ("aElement" "xx") ("aRewritingSystem" "xR"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IMPLIES (HEADTERM TAG ("aReductOfIn" (DB 0) "xx" "xR"))
       ("aElement" (DB 0))))
     "__"
     (BODY))))
(BLOCK (DECL)
  SIGNATURE
  "?"
  NIL
  (BODY
   (BLOCK (DECL "xx" "xR" "xy")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES (HEADTERM TAG ("sdtmndtplgtdt" "xx" "xR" "xy")) TRUTH)
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "TCDef"
  (BODY
   (BLOCK (DECL "xx" "xR" "xy")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF ("sdtmndtplgtdt" "xx" "xR" "xy")
      (OR ("aReductOfIn" "xy" "xx" "xR")
          (EXISTS
           (AND ("aElement" (DB 0))
                (AND ("aReductOfIn" (DB 0) "xx" "xR")
                     ("sdtmndtplgtdt" (DB 0) "xR" "xy"))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  AXIOM
  "?"
  "TCTrans"
  (BODY
   (BLOCK (DECL "xx" "xR" "xy" "xz")
     ASSUMPTION
     (AND
      (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
      ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IMPLIES
      (AND ("sdtmndtplgtdt" "xx" "xR" "xy") ("sdtmndtplgtdt" "xy" "xR" "xz"))
      ("sdtmndtplgtdt" "xx" "xR" "xz"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "TCRDef"
  (BODY
   (BLOCK (DECL "xx" "xR" "xy")
     ASSUMPTION
     (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("sdtmndtasgtdt" "xx" "xR" "xy"))
      (OR ("=" "xx" "xy") ("sdtmndtplgtdt" "xx" "xR" "xy")))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "TCRTrans"
  (BODY
   (BLOCK (DECL "xx" "xR" "xy" "xz")
     ASSUMPTION
     (AND
      (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
      ("aElement" "xz"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (IMPLIES
      (AND ("sdtmndtasgtdt" "xx" "xR" "xy") ("sdtmndtasgtdt" "xy" "xR" "xz"))
      ("sdtmndtasgtdt" "xx" "xR" "xz"))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "CRDef"
  (BODY (BLOCK (DECL "xR") ASSUMPTION ("aRewritingSystem" "xR") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isConfluent" "xR"))
      (FORALL
       (FORALL
        (FORALL
         (IMPLIES
          (AND
           (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1)))
                ("aElement" (DB 0)))
           (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
                ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
          (EXISTS
           (AND ("aElement" (DB 0))
                (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                     ("sdtmndtasgtdt" (DB 1) "xR" (DB 0))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "WCRDef"
  (BODY (BLOCK (DECL "xR") ASSUMPTION ("aRewritingSystem" "xR") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isLocallyConfluent" "xR"))
      (FORALL
       (FORALL
        (FORALL
         (IMPLIES
          (AND
           (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1)))
                ("aElement" (DB 0)))
           (AND ("aReductOfIn" (DB 1) (DB 2) "xR")
                ("aReductOfIn" (DB 0) (DB 2) "xR")))
          (EXISTS
           (AND ("aElement" (DB 0))
                (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                     ("sdtmndtasgtdt" (DB 1) "xR" (DB 0))))))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "Termin"
  (BODY (BLOCK (DECL "xR") ASSUMPTION ("aRewritingSystem" "xR") "__" (BODY))
   (BLOCK (DECL)
     POSIT
     (IFF (HEADTERM TAG ("isTerminating" "xR"))
      (FORALL
       (FORALL
        (IMPLIES (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
         (IMPLIES ("sdtmndtplgtdt" (DB 1) "xR" (DB 0))
          ("iLess" (DB 0) (DB 1)))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  DEFINITION
  "?"
  "NFRDef"
  (BODY
   (BLOCK (DECL "xx" "xR")
     ASSUMPTION
     (AND ("aElement" "xx") ("aRewritingSystem" "xR"))
     "__"
     (BODY))
   (BLOCK (DECL)
     POSIT
     (FORALL
      (IFF (HEADTERM TAG ("aNormalFormOfIn" (DB 0) "xx" "xR"))
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" "xx" "xR" (DB 0))
                 (NOT (EXISTS ("aReductOfIn" (DB 0) (DB 1) "xR")))))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "TermNF"
  (BODY
   (BLOCK (DECL "xR")
     ASSUMPTION
     (AND ("aRewritingSystem" "xR") ("isTerminating" "xR"))
     "__"
     (BODY))
   (BLOCK (DECL)
     AFFIRMATION
     (FORALL
      (IMPLIES ("aElement" (DB 0))
       (IMPLIES
        (INDUCTIONHYPOTHESIS TAG
         (FORALL
          (IMPLIES ("aElement" (DB 0))
           (IMPLIES ("iLess" (DB 0) (DB 1))
            (EXISTS ("aNormalFormOfIn" (DB 0) (DB 1) "xR"))))))
        (EXISTS ("aNormalFormOfIn" (DB 0) (DB 1) "xR")))))
     "__"
     (BODY))))
(BLOCK (DECL)
  THEOREM
  "?"
  "Newman"
  (BODY
   (BLOCK (DECL)
     AFFIRMATION
     (FORALL
      (IMPLIES
       (AND ("aRewritingSystem" (DB 0))
            (AND ("isTerminating" (DB 0)) ("isLocallyConfluent" (DB 0))))
       ("isConfluent" (DB 0))))
     "__"
     (BODY (BLOCK (DECL "xR") ASSUMPTION ("aRewritingSystem" "xR") "__" (BODY))
      (BLOCK (DECL)
        ASSUMPTION
        (AND ("isLocallyConfluent" "xR") ("isTerminating" "xR"))
        "__"
        (BODY))
      (BLOCK (DECL)
        AFFIRMATION
        (FORALL
         (FORALL
          (FORALL
           (IMPLIES
            (AND
             (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1)))
                  ("aElement" (DB 0)))
             (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
                  ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
            (IMPLIES
             (INDUCTIONHYPOTHESIS TAG
              (FORALL
               (FORALL
                (FORALL
                 (IMPLIES
                  (AND
                   (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1)))
                        ("aElement" (DB 0)))
                   (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
                        ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
                  (IMPLIES ("iLess" (DB 2) (DB 5))
                   (EXISTS
                    (AND ("aElement" (DB 0))
                         (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                              ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
             (EXISTS
              (AND ("aElement" (DB 0))
                   (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                        ("sdtmndtasgtdt" (DB 1) "xR" (DB 0))))))))))
        "__"
        (BODY
         (BLOCK (DECL "xa" "xb" "xc")
           ASSUMPTION
           (AND (AND ("aElement" "xa") ("aElement" "xb")) ("aElement" "xc"))
           "__"
           (BODY))
         (BLOCK (DECL)
           ASSUMPTION
           (AND ("sdtmndtplgtdt" "xa" "xR" "xb")
                ("sdtmndtplgtdt" "xa" "xR" "xc"))
           "__"
           (BODY))
         (BLOCK (DECL "xu")
           SELECTION
           (AND ("aElement" "xu")
                (AND ("aReductOfIn" "xu" "xa" "xR")
                     ("sdtmndtasgtdt" "xu" "xR" "xb")))
           "__"
           (BODY))
         (BLOCK (DECL "xv")
           SELECTION
           (AND ("aElement" "xv")
                (AND ("aReductOfIn" "xv" "xa" "xR")
                     ("sdtmndtasgtdt" "xv" "xR" "xc")))
           "__"
           (BODY))
         (BLOCK (DECL "xw")
           SELECTION
           (AND ("aElement" "xw")
                (AND ("sdtmndtasgtdt" "xu" "xR" "xw")
                     ("sdtmndtasgtdt" "xv" "xR" "xw")))
           "__"
           (BODY))
         (BLOCK (DECL "xd")
           SELECTION
           ("aNormalFormOfIn" "xd" "xw" "xR")
           "__"
           (BODY))
         (BLOCK (DECL)
           AFFIRMATION
           ("sdtmndtasgtdt" "xb" "xR" "xd")
           "__"
           (BODY
            (BLOCK (DECL "xx")
              SELECTION
              (AND ("aElement" "xx")
                   (AND ("sdtmndtasgtdt" "xb" "xR" "xx")
                        ("sdtmndtasgtdt" "xd" "xR" "xx")))
              "__"
              (BODY))))
         (BLOCK (DECL)
           AFFIRMATION
           ("sdtmndtasgtdt" "xc" "xR" "xd")
           "__"
           (BODY
            (BLOCK (DECL "xy")
              SELECTION
              (AND ("aElement" "xy")
                   (AND ("sdtmndtasgtdt" "xc" "xR" "xy")
                        ("sdtmndtasgtdt" "xd" "xR" "xy")))
              "__"
              (BODY))))))))))
