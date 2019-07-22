("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH)))
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xS") ("aElement" (DB 0)))))
("assume" ("aSet" "xS"))
("assume"
 (IFF (HEADTERM TAG ("isEmpty" "xS"))
  (NOT (EXISTS (DB 0) ("aElementOf" (DB 0) "xS")))))
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xS"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xS")))))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlseqdt" "xx" "xy")) TRUTH))
("assume" ("aElement" "xx"))
("assume" ("sdtlseqdt" "xx" "xx"))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IMPLIES (AND ("sdtlseqdt" "xx" "xy") ("sdtlseqdt" "xy" "xx"))
  ("=" "xx" "xy")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 (IMPLIES (AND ("sdtlseqdt" "xx" "xy") ("sdtlseqdt" "xy" "xz"))
  ("sdtlseqdt" "xx" "xz")))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aLowerBoundOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) "xS") ("sdtlseqdt" (DB 1) (DB 0))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aUpperBoundOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) "xS") ("sdtlseqdt" (DB 0) (DB 1))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aInfimumOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (AND ("aLowerBoundOfIn" (DB 0) "xS" "xT")
             (FORALL (DB 0)
              (IMPLIES ("aLowerBoundOfIn" (DB 0) "xS" "xT")
               ("sdtlseqdt" (DB 0) (DB 1)))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSupremumOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (AND ("aUpperBoundOfIn" (DB 0) "xS" "xT")
             (FORALL (DB 0)
              (IMPLIES ("aUpperBoundOfIn" (DB 0) "xS" "xT")
               ("sdtlseqdt" (DB 1) (DB 0)))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (AND ("aSupremumOfIn" "xu" "xS" "xT") ("aSupremumOfIn" "xv" "xS" "xT")))
(FORMULA ("=" "xu" "xv"))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume" (AND ("aInfimumOfIn" "xu" "xS" "xT") ("aInfimumOfIn" "xv" "xS" "xT")))
(FORMULA ("=" "xu" "xv"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aCompleteLattice" (DB 0)))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aSubsetOf" (DB 0) (DB 1))
          (EXISTS (DB 0)
           (AND ("aInfimumOfIn" (DB 0) (DB 1) (DB 2))
                (EXISTS (DB 0) ("aSupremumOfIn" (DB 0) (DB 2) (DB 3)))))))))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" ("aSet" ("szDzozmlpdtrp" "xf")))
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szRzaznlpdtrp" "xf"))) ("aSet" (DB 0)))))
("assume" (AND ("aFunction" "xf") ("aSet" "xS")))
("assume"
 (IFF (HEADTERM TAG ("isOn" "xf" "xS"))
  (AND ("=" ("szDzozmlpdtrp" "xf") ("szRzaznlpdtrp" "xf"))
       ("=" ("szRzaznlpdtrp" "xf") "xS"))))
("assume" ("aFunction" "xf"))
("assume" ("aElementOf" "xx" ("szDzozmlpdtrp" "xf")))
("assume" ("aElementOf" ("sdtlbdtrb" "xf" "xx") ("szRzaznlpdtrp" "xf")))
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aFixedPointOf" (DB 0) "xf"))
   (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        ("=" ("sdtlbdtrb" "xf" (DB 0)) (DB 0))))))
("assume" ("aFunction" "xf"))
("assume"
 (IFF (HEADTERM TAG ("isMonotone" "xf"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES
     (AND ("aElementOf" (DB 1) ("szDzozmlpdtrp" "xf"))
          ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf")))
     (IMPLIES ("sdtlseqdt" (DB 1) (DB 0))
      ("sdtlseqdt" ("sdtlbdtrb" "xf" (DB 1)) ("sdtlbdtrb" "xf" (DB 0)))))))))
("assume"
 (AND ("aCompleteLattice" "xU")
      (AND ("aFunction" "xf") (AND ("isMonotone" "xf") ("isOn" "xf" "xU")))))
("assume"
 (AND ("aSet" "xS") ("=" "xS" (LAMBDA (DB 0) ("aFixedPointOf" (DB 0) "xf")))))
(FORMULA ("aCompleteLattice" "xS"))
"proof."
("assume" ("aSubsetOf" "xT" "xS"))
(FORMULA (EXISTS (DB 0) ("aSupremumOfIn" (DB 0) "xT" "xS")))
"proof."
(FORMULA
 (AND ("aSet" "xP")
      ("=" "xP"
       (LAMBDA (DB 0)
         (AND ("aElementOf" (DB 0) "xU")
              (AND ("sdtlseqdt" ("sdtlbdtrb" "xf" (DB 0)) (DB 0))
                   ("aUpperBoundOfIn" (DB 0) "xT" "xU")))))))
(FORMULA ("aInfimumOfIn" "xp" "xP" "xU"))
(FORMULA
 (AND ("aLowerBoundOfIn" ("sdtlbdtrb" "xf" "xp") "xP" "xU")
      ("aUpperBoundOfIn" ("sdtlbdtrb" "xf" "xp") "xT" "xU")))
(FORMULA (AND ("aFixedPointOf" "xp" "xf") ("aSupremumOfIn" "xp" "xT" "xS")))
"qed."
(FORMULA (EXISTS (DB 0) ("aInfimumOfIn" (DB 0) "xT" "xS")))
"proof."
(FORMULA
 (AND ("aSet" "xQ")
      ("=" "xQ"
       (LAMBDA (DB 0)
         (AND ("aElementOf" (DB 0) "xU")
              (AND ("sdtlseqdt" (DB 0) ("sdtlbdtrb" "xf" (DB 0)))
                   ("aLowerBoundOfIn" (DB 0) "xT" "xU")))))))
(FORMULA ("aSupremumOfIn" "xq" "xQ" "xU"))
(FORMULA
 (AND ("aUpperBoundOfIn" ("sdtlbdtrb" "xf" "xq") "xQ" "xU")
      ("aLowerBoundOfIn" ("sdtlbdtrb" "xf" "xq") "xT" "xU")))
(FORMULA (AND ("aFixedPointOf" "xq" "xf") ("aInfimumOfIn" "xq" "xT" "xS")))
"qed."
"qed."
("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH)))
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xS") ("aElement" (DB 0)))))
("assume" ("aSet" "xS"))
("assume"
 (IFF (HEADTERM TAG ("isEmpty" "xS"))
  (NOT (EXISTS (DB 0) ("aElementOf" (DB 0) "xS")))))
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xS"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xS")))))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlseqdt" "xx" "xy")) TRUTH))
("assume" ("aElement" "xx"))
("assume" ("sdtlseqdt" "xx" "xx"))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IMPLIES (AND ("sdtlseqdt" "xx" "xy") ("sdtlseqdt" "xy" "xx"))
  ("=" "xx" "xy")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 (IMPLIES (AND ("sdtlseqdt" "xx" "xy") ("sdtlseqdt" "xy" "xz"))
  ("sdtlseqdt" "xx" "xz")))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aLowerBoundOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) "xS") ("sdtlseqdt" (DB 1) (DB 0))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aUpperBoundOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) "xS") ("sdtlseqdt" (DB 0) (DB 1))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aInfimumOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (AND ("aLowerBoundOfIn" (DB 0) "xS" "xT")
             (FORALL (DB 0)
              (IMPLIES ("aLowerBoundOfIn" (DB 0) "xS" "xT")
               ("sdtlseqdt" (DB 0) (DB 1)))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSupremumOfIn" (DB 0) "xS" "xT"))
   (AND ("aElementOf" (DB 0) "xT")
        (AND ("aUpperBoundOfIn" (DB 0) "xS" "xT")
             (FORALL (DB 0)
              (IMPLIES ("aUpperBoundOfIn" (DB 0) "xS" "xT")
               ("sdtlseqdt" (DB 1) (DB 0)))))))))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume"
 (AND ("aSupremumOfIn" "xu" "xS" "xT") ("aSupremumOfIn" "xv" "xS" "xT")))
(FORMULA ("=" "xu" "xv"))
("assume" ("aSet" "xT"))
("assume" ("aSubsetOf" "xS" "xT"))
("assume" (AND ("aInfimumOfIn" "xu" "xS" "xT") ("aInfimumOfIn" "xv" "xS" "xT")))
(FORMULA ("=" "xu" "xv"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aCompleteLattice" (DB 0)))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aSubsetOf" (DB 0) (DB 1))
          (EXISTS (DB 0)
           (AND ("aInfimumOfIn" (DB 0) (DB 1) (DB 2))
                (EXISTS (DB 0) ("aSupremumOfIn" (DB 0) (DB 2) (DB 3)))))))))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" ("aSet" ("szDzozmlpdtrp" "xf")))
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szRzaznlpdtrp" "xf"))) ("aSet" (DB 0)))))
("assume" (AND ("aFunction" "xf") ("aSet" "xS")))
("assume"
 (IFF (HEADTERM TAG ("isOn" "xf" "xS"))
  (AND ("=" ("szDzozmlpdtrp" "xf") ("szRzaznlpdtrp" "xf"))
       ("=" ("szRzaznlpdtrp" "xf") "xS"))))
("assume" ("aFunction" "xf"))
("assume" ("aElementOf" "xx" ("szDzozmlpdtrp" "xf")))
("assume" ("aElementOf" ("sdtlbdtrb" "xf" "xx") ("szRzaznlpdtrp" "xf")))
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aFixedPointOf" (DB 0) "xf"))
   (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        ("=" ("sdtlbdtrb" "xf" (DB 0)) (DB 0))))))
("assume" ("aFunction" "xf"))
("assume"
 (IFF (HEADTERM TAG ("isMonotone" "xf"))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES
     (AND ("aElementOf" (DB 1) ("szDzozmlpdtrp" "xf"))
          ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf")))
     (IMPLIES ("sdtlseqdt" (DB 1) (DB 0))
      ("sdtlseqdt" ("sdtlbdtrb" "xf" (DB 1)) ("sdtlbdtrb" "xf" (DB 0)))))))))
("assume"
 (AND ("aCompleteLattice" "xU")
      (AND ("aFunction" "xf") (AND ("isMonotone" "xf") ("isOn" "xf" "xU")))))
("assume"
 (AND ("aSet" "xS") ("=" "xS" (LAMBDA (DB 0) ("aFixedPointOf" (DB 0) "xf")))))
(FORMULA ("aCompleteLattice" "xS"))
"proof."
("assume" ("aSubsetOf" "xT" "xS"))
(FORMULA (EXISTS (DB 0) ("aSupremumOfIn" (DB 0) "xT" "xS")))
"proof."
(FORMULA
 (AND ("aSet" "xP")
      ("=" "xP"
       (LAMBDA (DB 0)
         (AND ("aElementOf" (DB 0) "xU")
              (AND ("sdtlseqdt" ("sdtlbdtrb" "xf" (DB 0)) (DB 0))
                   ("aUpperBoundOfIn" (DB 0) "xT" "xU")))))))
(FORMULA ("aInfimumOfIn" "xp" "xP" "xU"))
(FORMULA
 (AND ("aLowerBoundOfIn" ("sdtlbdtrb" "xf" "xp") "xP" "xU")
      ("aUpperBoundOfIn" ("sdtlbdtrb" "xf" "xp") "xT" "xU")))
(FORMULA (AND ("aFixedPointOf" "xp" "xf") ("aSupremumOfIn" "xp" "xT" "xS")))
"qed."
(FORMULA (EXISTS (DB 0) ("aInfimumOfIn" (DB 0) "xT" "xS")))
"proof."
(FORMULA
 (AND ("aSet" "xQ")
      ("=" "xQ"
       (LAMBDA (DB 0)
         (AND ("aElementOf" (DB 0) "xU")
              (AND ("sdtlseqdt" (DB 0) ("sdtlbdtrb" "xf" (DB 0)))
                   ("aLowerBoundOfIn" (DB 0) "xT" "xU")))))))
(FORMULA ("aSupremumOfIn" "xq" "xQ" "xU"))
(FORMULA
 (AND ("aUpperBoundOfIn" ("sdtlbdtrb" "xf" "xq") "xQ" "xU")
      ("aLowerBoundOfIn" ("sdtlbdtrb" "xf" "xq") "xT" "xU")))
(FORMULA (AND ("aFixedPointOf" "xq" "xf") ("aInfimumOfIn" "xq" "xT" "xS")))
"qed."
"qed."
