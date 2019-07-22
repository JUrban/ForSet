"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xM"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xM")))))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" ("aSubsetOf" "xM" ("szDzozmlpdtrp" "xf")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtcflbdtrb" "xf" "xM")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (EXISTS (DB 0)
             (AND ("aElementOf" (DB 0) "xM")
                  ("=" (DB 1) ("sdtlbdtrb" "xf" (DB 0))))))))))))
"hypothesis."
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aComplexNumber" (DB 0))) TRUTH)))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume"
 (AND
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
    ("aComplexNumber" (DB 0))))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
    ("aComplexNumber" ("sdtlbdtrb" "xf" (DB 0)))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xM") ("aComplexNumber" (DB 0)))))
"hypothesis."
("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aRealNumber" (DB 0))) TRUTH)))
"hypothesis."
("assume" ("aComplexNumber" "xz"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sbrdtbr" "xz")))
   ("aRealNumber" (DB 0)))))
"hypothesis."
("assume" ("aRealNumber" "xx"))
("assume" (IMPLIES (HEADTERM TAG ("isPositive" "xx")) TRUTH))
"hypothesis."
("assume" (AND ("aRealNumber" "xx") ("aRealNumber" "xy")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlsdt" "xx" "xy")) TRUTH))
"hypothesis."
("assume" (AND ("aRealNumber" "xx") ("aRealNumber" "xy")))
("assume" (IMPLIES ("sdtlsdt" "xx" "xy") (NOT ("sdtlsdt" "xy" "xx"))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" (IMPLIES (HEADTERM TAG ("isHolomorphic" "xf")) TRUTH))
"hypothesis."
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
   (AND ("aSet" (DB 0)) ("aElementOf" "xz" (DB 0))))))
"hypothesis."
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume"
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
       ("sdtlsdt" ("sbrdtbr" "xz") ("sbrdtbr" (DB 0))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (IFF (HEADTERM TAG ("isOpen" "xM"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xM")
    (EXISTS (DB 0)
     (AND (AND ("aRealNumber" (DB 0)) ("isPositive" (DB 0)))
          ("aSubsetOf" ("szBzazlzllpdtcmdtrp" (DB 0) (DB 1)) "xM")))))))
"hypothesis."
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume" ("isOpen" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aLocalMaximalPointOf" (DB 0) "xf"))
   (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        (EXISTS (DB 0)
         (AND (AND ("aRealNumber" (DB 0)) ("isPositive" (DB 0)))
              (AND
               ("aSubsetOf" ("szBzazlzllpdtcmdtrp" (DB 0) (DB 1))
                ("szDzozmlpdtrp" "xf"))
               (FORALL (DB 0)
                (IMPLIES
                 ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" (DB 1) (DB 2)))
                 (OR
                  ("=" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                   ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 2))))
                  ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                   ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 2))))))))))))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" ("aSubsetOf" "xU" ("szDzozmlpdtrp" "xf")))
("assume"
 (IFF (HEADTERM TAG ("isConstantOn" "xf" "xU"))
  (EXISTS (DB 0)
   (AND ("aComplexNumber" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) "xU")
          ("=" ("sdtlbdtrb" "xf" (DB 0)) (DB 1))))))))
"hypothesis."
("assume"
 (AND
  (AND ("aFunction" "xf") (AND ("aRealNumber" "xeps") ("isPositive" "xeps")))
  ("aComplexNumber" "xz")))
("assume"
 (AND ("isHolomorphic" "xf")
      ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf"))))
("assume"
 (IMPLIES (NOT ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
  ("isOpen" ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aRegion" (DB 0)))
   (AND ("aSet" (DB 0)) ("isOpen" (DB 0))))))
("assume" ("aFunction" "xf"))
("assume" (AND ("isHolomorphic" "xf") ("aRegion" ("szDzozmlpdtrp" "xf"))))
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume"
 ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf")))
("assume"
 (IMPLIES ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
  ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf"))))
("assume" ("aFunction" "xf"))
("assume" (AND ("isHolomorphic" "xf") ("aRegion" ("szDzozmlpdtrp" "xf"))))
(FORMULA
 (IMPLIES (EXISTS (DB 0) ("aLocalMaximalPointOf" (DB 0) "xf"))
  ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf"))))
"proof."
("assume" ("aLocalMaximalPointOf" "xz" "xf"))
(FORMULA
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      (AND
       ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf"))
       (FORALL (DB 0)
        (IMPLIES ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
         (OR
          ("=" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
           ("sbrdtbr" ("sdtlbdtrb" "xf" "xz")))
          ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
           ("sbrdtbr" ("sdtlbdtrb" "xf" "xz")))))))))
(FORMULA ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA ("isOpen" ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))))
(FORMULA
 (AND (AND ("aRealNumber" "xdelta") ("isPositive" "xdelta"))
      ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xdelta" ("sdtlbdtrb" "xf" "xz"))
       ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
       ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" "xz"))
        ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))))))
"contradiction."
"qed."
(FORMULA ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf")))
"qed."
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xM"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xM")))))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" ("aSubsetOf" "xM" ("szDzozmlpdtrp" "xf")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtcflbdtrb" "xf" "xM")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (EXISTS (DB 0)
             (AND ("aElementOf" (DB 0) "xM")
                  ("=" (DB 1) ("sdtlbdtrb" "xf" (DB 0))))))))))))
"hypothesis."
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aComplexNumber" (DB 0))) TRUTH)))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume"
 (AND
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
    ("aComplexNumber" (DB 0))))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
    ("aComplexNumber" ("sdtlbdtrb" "xf" (DB 0)))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xM") ("aComplexNumber" (DB 0)))))
"hypothesis."
("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aRealNumber" (DB 0))) TRUTH)))
"hypothesis."
("assume" ("aComplexNumber" "xz"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sbrdtbr" "xz")))
   ("aRealNumber" (DB 0)))))
"hypothesis."
("assume" ("aRealNumber" "xx"))
("assume" (IMPLIES (HEADTERM TAG ("isPositive" "xx")) TRUTH))
"hypothesis."
("assume" (AND ("aRealNumber" "xx") ("aRealNumber" "xy")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlsdt" "xx" "xy")) TRUTH))
"hypothesis."
("assume" (AND ("aRealNumber" "xx") ("aRealNumber" "xy")))
("assume" (IMPLIES ("sdtlsdt" "xx" "xy") (NOT ("sdtlsdt" "xy" "xx"))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" (IMPLIES (HEADTERM TAG ("isHolomorphic" "xf")) TRUTH))
"hypothesis."
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
   (AND ("aSet" (DB 0)) ("aElementOf" "xz" (DB 0))))))
"hypothesis."
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume"
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
       ("sdtlsdt" ("sbrdtbr" "xz") ("sbrdtbr" (DB 0))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (IFF (HEADTERM TAG ("isOpen" "xM"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xM")
    (EXISTS (DB 0)
     (AND (AND ("aRealNumber" (DB 0)) ("isPositive" (DB 0)))
          ("aSubsetOf" ("szBzazlzllpdtcmdtrp" (DB 0) (DB 1)) "xM")))))))
"hypothesis."
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume" ("isOpen" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aLocalMaximalPointOf" (DB 0) "xf"))
   (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        (EXISTS (DB 0)
         (AND (AND ("aRealNumber" (DB 0)) ("isPositive" (DB 0)))
              (AND
               ("aSubsetOf" ("szBzazlzllpdtcmdtrp" (DB 0) (DB 1))
                ("szDzozmlpdtrp" "xf"))
               (FORALL (DB 0)
                (IMPLIES
                 ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" (DB 1) (DB 2)))
                 (OR
                  ("=" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                   ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 2))))
                  ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
                   ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 2))))))))))))))
"hypothesis."
("assume" ("aFunction" "xf"))
("assume" ("aSubsetOf" "xU" ("szDzozmlpdtrp" "xf")))
("assume"
 (IFF (HEADTERM TAG ("isConstantOn" "xf" "xU"))
  (EXISTS (DB 0)
   (AND ("aComplexNumber" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) "xU")
          ("=" ("sdtlbdtrb" "xf" (DB 0)) (DB 1))))))))
"hypothesis."
("assume"
 (AND
  (AND ("aFunction" "xf") (AND ("aRealNumber" "xeps") ("isPositive" "xeps")))
  ("aComplexNumber" "xz")))
("assume"
 (AND ("isHolomorphic" "xf")
      ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf"))))
("assume"
 (IMPLIES (NOT ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
  ("isOpen" ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aRegion" (DB 0)))
   (AND ("aSet" (DB 0)) ("isOpen" (DB 0))))))
("assume" ("aFunction" "xf"))
("assume" (AND ("isHolomorphic" "xf") ("aRegion" ("szDzozmlpdtrp" "xf"))))
("assume"
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      ("aComplexNumber" "xz")))
("assume"
 ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf")))
("assume"
 (IMPLIES ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
  ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf"))))
("assume" ("aFunction" "xf"))
("assume" (AND ("isHolomorphic" "xf") ("aRegion" ("szDzozmlpdtrp" "xf"))))
(FORMULA
 (IMPLIES (EXISTS (DB 0) ("aLocalMaximalPointOf" (DB 0) "xf"))
  ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf"))))
"proof."
("assume" ("aLocalMaximalPointOf" "xz" "xf"))
(FORMULA
 (AND (AND ("aRealNumber" "xeps") ("isPositive" "xeps"))
      (AND
       ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xeps" "xz") ("szDzozmlpdtrp" "xf"))
       (FORALL (DB 0)
        (IMPLIES ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
         (OR
          ("=" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
           ("sbrdtbr" ("sdtlbdtrb" "xf" "xz")))
          ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))
           ("sbrdtbr" ("sdtlbdtrb" "xf" "xz")))))))))
(FORMULA ("isConstantOn" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA ("isOpen" ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz"))))
(FORMULA
 (AND (AND ("aRealNumber" "xdelta") ("isPositive" "xdelta"))
      ("aSubsetOf" ("szBzazlzllpdtcmdtrp" "xdelta" ("sdtlbdtrb" "xf" "xz"))
       ("sdtcflbdtrb" "xf" ("szBzazlzllpdtcmdtrp" "xeps" "xz")))))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("szBzazlzllpdtcmdtrp" "xeps" "xz"))
       ("sdtlsdt" ("sbrdtbr" ("sdtlbdtrb" "xf" "xz"))
        ("sbrdtbr" ("sdtlbdtrb" "xf" (DB 0)))))))
"contradiction."
"qed."
(FORMULA ("isConstantOn" "xf" ("szDzozmlpdtrp" "xf")))
"qed."
