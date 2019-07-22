("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH)))
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aRewritingSystem" (DB 0))) TRUTH)))
("assume" (AND ("aElement" "xx") ("aRewritingSystem" "xR")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aReductOfIn" (DB 0) "xx" "xR"))
   ("aElement" (DB 0)))))
"hypothesis."
("assume"
 (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy")))
("assume" (IMPLIES (HEADTERM TAG ("sdtmndtplgtdt" "xx" "xR" "xy")) TRUTH))
("assume"
 (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy")))
("assume"
 (IFF ("sdtmndtplgtdt" "xx" "xR" "xy")
  (OR ("aReductOfIn" "xy" "xx" "xR")
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("aReductOfIn" (DB 0) "xx" "xR")
                 ("sdtmndtplgtdt" (DB 0) "xR" "xy")))))))
("assume"
 (AND (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
      ("aElement" "xz")))
("assume"
 (IMPLIES
  (AND ("sdtmndtplgtdt" "xx" "xR" "xy") ("sdtmndtplgtdt" "xy" "xR" "xz"))
  ("sdtmndtplgtdt" "xx" "xR" "xz")))
("assume"
 (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy")))
("assume"
 (IFF (HEADTERM TAG ("sdtmndtasgtdt" "xx" "xR" "xy"))
  (OR ("=" "xx" "xy") ("sdtmndtplgtdt" "xx" "xR" "xy"))))
("assume"
 (AND (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
      ("aElement" "xz")))
(FORMULA
 (IMPLIES
  (AND ("sdtmndtasgtdt" "xx" "xR" "xy") ("sdtmndtasgtdt" "xy" "xR" "xz"))
  ("sdtmndtasgtdt" "xx" "xR" "xz")))
("assume" ("aRewritingSystem" "xR"))
("assume"
 (IFF (HEADTERM TAG ("isConfluent" "xR"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (FORALL (DB 0)
     (IMPLIES
      (AND
       (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1))) ("aElement" (DB 0)))
       (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
            ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                 ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
("assume" ("aRewritingSystem" "xR"))
("assume"
 (IFF (HEADTERM TAG ("isLocallyConfluent" "xR"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (FORALL (DB 0)
     (IMPLIES
      (AND
       (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1))) ("aElement" (DB 0)))
       (AND ("aReductOfIn" (DB 1) (DB 2) "xR")
            ("aReductOfIn" (DB 0) (DB 2) "xR")))
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                 ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
("assume" ("aRewritingSystem" "xR"))
("assume"
 (IFF (HEADTERM TAG ("isTerminating" "xR"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
     (IMPLIES ("sdtmndtplgtdt" (DB 1) "xR" (DB 0)) ("iLess" (DB 0) (DB 1))))))))
("assume" (AND ("aElement" "xx") ("aRewritingSystem" "xR")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aNormalFormOfIn" (DB 0) "xx" "xR"))
   (AND ("aElement" (DB 0))
        (AND ("sdtmndtasgtdt" "xx" "xR" (DB 0))
             (NOT (EXISTS (DB 0) ("aReductOfIn" (DB 0) (DB 1) "xR"))))))))
("assume" (AND ("aRewritingSystem" "xR") ("isTerminating" "xR")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0))
   (IMPLIES
    (INDUCTIONHYPOTHESIS TAG
     (FORALL (DB 0)
      (IMPLIES ("aElement" (DB 0))
       (IMPLIES ("iLess" (DB 0) (DB 1))
        (EXISTS (DB 0) ("aNormalFormOfIn" (DB 0) (DB 1) "xR"))))))
    (EXISTS (DB 0) ("aNormalFormOfIn" (DB 0) (DB 1) "xR"))))))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES
   (AND ("aRewritingSystem" (DB 0))
        (AND ("isTerminating" (DB 0)) ("isLocallyConfluent" (DB 0))))
   ("isConfluent" (DB 0)))))
"proof."
("assume" ("aRewritingSystem" "xR"))
("assume" (AND ("isLocallyConfluent" "xR") ("isTerminating" "xR")))
(FORMULA
 (FORALL (DB 0)
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES
     (AND
      (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1))) ("aElement" (DB 0)))
      (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
           ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
     (IMPLIES
      (INDUCTIONHYPOTHESIS TAG
       (FORALL (DB 0)
        (FORALL (DB 0)
         (FORALL (DB 0)
          (IMPLIES
           (AND
            (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1)))
                 ("aElement" (DB 0)))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
                 ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
           (IMPLIES ("iLess" (DB 2) (DB 5))
            (EXISTS (DB 0)
             (AND ("aElement" (DB 0))
                  (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                       ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                 ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
"proof."
("assume" (AND (AND ("aElement" "xa") ("aElement" "xb")) ("aElement" "xc")))
("assume"
 (AND ("sdtmndtplgtdt" "xa" "xR" "xb") ("sdtmndtplgtdt" "xa" "xR" "xc")))
(FORMULA
 (AND ("aElement" "xu")
      (AND ("aReductOfIn" "xu" "xa" "xR") ("sdtmndtasgtdt" "xu" "xR" "xb"))))
(FORMULA
 (AND ("aElement" "xv")
      (AND ("aReductOfIn" "xv" "xa" "xR") ("sdtmndtasgtdt" "xv" "xR" "xc"))))
(FORMULA
 (AND ("aElement" "xw")
      (AND ("sdtmndtasgtdt" "xu" "xR" "xw") ("sdtmndtasgtdt" "xv" "xR" "xw"))))
(FORMULA ("aNormalFormOfIn" "xd" "xw" "xR"))
(FORMULA ("sdtmndtasgtdt" "xb" "xR" "xd"))
"proof."
(FORMULA
 (AND ("aElement" "xx")
      (AND ("sdtmndtasgtdt" "xb" "xR" "xx") ("sdtmndtasgtdt" "xd" "xR" "xx"))))
"qed."
(FORMULA ("sdtmndtasgtdt" "xc" "xR" "xd"))
"proof."
(FORMULA
 (AND ("aElement" "xy")
      (AND ("sdtmndtasgtdt" "xc" "xR" "xy") ("sdtmndtasgtdt" "xd" "xR" "xy"))))
"qed."
"qed."
"qed."
("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH)))
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aRewritingSystem" (DB 0))) TRUTH)))
("assume" (AND ("aElement" "xx") ("aRewritingSystem" "xR")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aReductOfIn" (DB 0) "xx" "xR"))
   ("aElement" (DB 0)))))
"hypothesis."
("assume"
 (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy")))
("assume" (IMPLIES (HEADTERM TAG ("sdtmndtplgtdt" "xx" "xR" "xy")) TRUTH))
("assume"
 (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy")))
("assume"
 (IFF ("sdtmndtplgtdt" "xx" "xR" "xy")
  (OR ("aReductOfIn" "xy" "xx" "xR")
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("aReductOfIn" (DB 0) "xx" "xR")
                 ("sdtmndtplgtdt" (DB 0) "xR" "xy")))))))
("assume"
 (AND (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
      ("aElement" "xz")))
("assume"
 (IMPLIES
  (AND ("sdtmndtplgtdt" "xx" "xR" "xy") ("sdtmndtplgtdt" "xy" "xR" "xz"))
  ("sdtmndtplgtdt" "xx" "xR" "xz")))
("assume"
 (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy")))
("assume"
 (IFF (HEADTERM TAG ("sdtmndtasgtdt" "xx" "xR" "xy"))
  (OR ("=" "xx" "xy") ("sdtmndtplgtdt" "xx" "xR" "xy"))))
("assume"
 (AND (AND (AND ("aElement" "xx") ("aRewritingSystem" "xR")) ("aElement" "xy"))
      ("aElement" "xz")))
(FORMULA
 (IMPLIES
  (AND ("sdtmndtasgtdt" "xx" "xR" "xy") ("sdtmndtasgtdt" "xy" "xR" "xz"))
  ("sdtmndtasgtdt" "xx" "xR" "xz")))
("assume" ("aRewritingSystem" "xR"))
("assume"
 (IFF (HEADTERM TAG ("isConfluent" "xR"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (FORALL (DB 0)
     (IMPLIES
      (AND
       (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1))) ("aElement" (DB 0)))
       (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
            ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                 ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
("assume" ("aRewritingSystem" "xR"))
("assume"
 (IFF (HEADTERM TAG ("isLocallyConfluent" "xR"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (FORALL (DB 0)
     (IMPLIES
      (AND
       (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1))) ("aElement" (DB 0)))
       (AND ("aReductOfIn" (DB 1) (DB 2) "xR")
            ("aReductOfIn" (DB 0) (DB 2) "xR")))
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                 ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
("assume" ("aRewritingSystem" "xR"))
("assume"
 (IFF (HEADTERM TAG ("isTerminating" "xR"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
     (IMPLIES ("sdtmndtplgtdt" (DB 1) "xR" (DB 0)) ("iLess" (DB 0) (DB 1))))))))
("assume" (AND ("aElement" "xx") ("aRewritingSystem" "xR")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aNormalFormOfIn" (DB 0) "xx" "xR"))
   (AND ("aElement" (DB 0))
        (AND ("sdtmndtasgtdt" "xx" "xR" (DB 0))
             (NOT (EXISTS (DB 0) ("aReductOfIn" (DB 0) (DB 1) "xR"))))))))
("assume" (AND ("aRewritingSystem" "xR") ("isTerminating" "xR")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0))
   (IMPLIES
    (INDUCTIONHYPOTHESIS TAG
     (FORALL (DB 0)
      (IMPLIES ("aElement" (DB 0))
       (IMPLIES ("iLess" (DB 0) (DB 1))
        (EXISTS (DB 0) ("aNormalFormOfIn" (DB 0) (DB 1) "xR"))))))
    (EXISTS (DB 0) ("aNormalFormOfIn" (DB 0) (DB 1) "xR"))))))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES
   (AND ("aRewritingSystem" (DB 0))
        (AND ("isTerminating" (DB 0)) ("isLocallyConfluent" (DB 0))))
   ("isConfluent" (DB 0)))))
"proof."
("assume" ("aRewritingSystem" "xR"))
("assume" (AND ("isLocallyConfluent" "xR") ("isTerminating" "xR")))
(FORMULA
 (FORALL (DB 0)
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES
     (AND
      (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1))) ("aElement" (DB 0)))
      (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
           ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
     (IMPLIES
      (INDUCTIONHYPOTHESIS TAG
       (FORALL (DB 0)
        (FORALL (DB 0)
         (FORALL (DB 0)
          (IMPLIES
           (AND
            (AND (AND ("aElement" (DB 2)) ("aElement" (DB 1)))
                 ("aElement" (DB 0)))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 1))
                 ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))))
           (IMPLIES ("iLess" (DB 2) (DB 5))
            (EXISTS (DB 0)
             (AND ("aElement" (DB 0))
                  (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                       ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
      (EXISTS (DB 0)
       (AND ("aElement" (DB 0))
            (AND ("sdtmndtasgtdt" (DB 2) "xR" (DB 0))
                 ("sdtmndtasgtdt" (DB 1) "xR" (DB 0)))))))))))
"proof."
("assume" (AND (AND ("aElement" "xa") ("aElement" "xb")) ("aElement" "xc")))
("assume"
 (AND ("sdtmndtplgtdt" "xa" "xR" "xb") ("sdtmndtplgtdt" "xa" "xR" "xc")))
(FORMULA
 (AND ("aElement" "xu")
      (AND ("aReductOfIn" "xu" "xa" "xR") ("sdtmndtasgtdt" "xu" "xR" "xb"))))
(FORMULA
 (AND ("aElement" "xv")
      (AND ("aReductOfIn" "xv" "xa" "xR") ("sdtmndtasgtdt" "xv" "xR" "xc"))))
(FORMULA
 (AND ("aElement" "xw")
      (AND ("sdtmndtasgtdt" "xu" "xR" "xw") ("sdtmndtasgtdt" "xv" "xR" "xw"))))
(FORMULA ("aNormalFormOfIn" "xd" "xw" "xR"))
(FORMULA ("sdtmndtasgtdt" "xb" "xR" "xd"))
"proof."
(FORMULA
 (AND ("aElement" "xx")
      (AND ("sdtmndtasgtdt" "xb" "xR" "xx") ("sdtmndtasgtdt" "xd" "xR" "xx"))))
"qed."
(FORMULA ("sdtmndtasgtdt" "xc" "xR" "xd"))
"proof."
(FORMULA
 (AND ("aElement" "xy")
      (AND ("sdtmndtasgtdt" "xc" "xR" "xy") ("sdtmndtasgtdt" "xd" "xR" "xy"))))
"qed."
"qed."
"qed."
