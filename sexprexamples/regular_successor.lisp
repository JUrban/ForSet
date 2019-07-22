"hypothesis."
("assume"
 (FORALL (DB 0)
  (FORALL (DB 0)
   (FORALL (DB 0)
    (FORALL (DB 0)
     (IMPLIES (AND (AND (AND TRUTHTRUTH) TRUTH) TRUTH)
      (IMPLIES
       ("=" ("slpdtcmdtrp" (DB 3) (DB 2)) ("slpdtcmdtrp" (DB 1) (DB 0)))
       (AND ("=" (DB 3) (DB 1)) ("=" (DB 2) (DB 0))))))))))
"hypothesis."
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szPzrzozdlpdtcmdtrp" "xM" "xN")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (EXISTS (DB 0)
             (EXISTS (DB 0)
              (AND (AND ("aElementOf" (DB 1) "xM") ("aElementOf" (DB 0) "xN"))
                   ("=" (DB 2) ("slpdtcmdtrp" (DB 1) (DB 0)))))))))))))
"conjecture."
("assume" (AND TRUTHTRUTH))
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
(FORMULA
 (IMPLIES
  ("aElementOf" ("slpdtcmdtrp" "xx" "xy") ("szPzrzozdlpdtcmdtrp" "xM" "xN"))
  (AND ("aElementOf" "xx" "xM") ("aElementOf" "xy" "xN"))))
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
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aOrdinal" (DB 0))) ("aSet" (DB 0)))))
"hypothesis."
("assume" ("aOrdinal" "xalpha"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xalpha") ("aOrdinal" (DB 0)))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aCardinal" (DB 0))) ("aOrdinal" (DB 0)))))
"hypothesis."
("assume" (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlsdt" "xalpha" "xbeta")) TRUTH))
"hypothesis."
("assume" (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta")))
("assume"
 (IMPLIES ("sdtlsdt" "xalpha" "xbeta") ("aElementOf" "xalpha" "xbeta")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("aSubsetOf" "xM" "xA"))
("assume"
 (IFF (HEADTERM TAG ("isCofinalIn" "xM" "xA"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xA")
    (EXISTS (DB 0)
     (AND ("aElementOf" (DB 0) "xM") ("sdtlsdt" (DB 1) (DB 0))))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("ttheCardinalityOf" "xM")))
   ("aCardinal" (DB 0)))))
("assume" ("aSet" "xM"))
("assume" (EXISTS (DB 0) ("aElementOf" (DB 0) "xM")))
("assume" ("aSet" "xN"))
("assume"
 (IFF
  (OR ("=" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))
      ("sdtlsdt" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN")))
  (EXISTS (DB 0)
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xN")
             ("=" ("sdtcflbdtrb" (DB 0) "xN") "xM"))))))
("assume" ("aCardinal" "xA"))
("assume" ("aElementOf" "xM" "xA"))
("assume" ("aElementOf" "xN" "xM"))
("assume" ("aElementOf" "xN" "xA"))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 ("=" ("ttheCardinalityOf" ("szPzrzozdlpdtcmdtrp" "xM" "xM"))
  ("ttheCardinalityOf" "xM")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("=" ("ttheCardinalityOf" "xA") "xA"))
"hypothesis."
("assume" ("aSet" "xM"))
("assume" ("aSubsetOf" "xN" "xM"))
("assume"
 (OR ("=" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM"))
     ("sdtlsdt" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM"))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (IFF (HEADTERM TAG ("isRegular" "xA"))
  (FORALL (DB 0)
   (IMPLIES (AND ("aSubsetOf" (DB 0) "xA") ("isCofinalIn" (DB 0) "xA"))
    ("=" ("ttheCardinalityOf" (DB 0)) "xA")))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szSzuzczclpdtrp" "xA")))
   ("aCardinal" (DB 0)))))
"hypothesis."
("assume" (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta")))
("assume"
 (OR (OR ("sdtlsdt" "xalpha" "xbeta") ("sdtlsdt" "xbeta" "xalpha"))
     ("=" "xbeta" "xalpha")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("sdtlsdt" "xA" ("szSzuzczclpdtrp" "xA")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))
   (OR ("=" ("ttheCardinalityOf" (DB 0)) "xA")
       ("sdtlsdt" ("ttheCardinalityOf" (DB 0)) "xA")))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (FORALL (DB 0)
   (IMPLIES (AND ("aCardinal" (DB 1)) ("aCardinal" (DB 0)))
    (NOT (AND ("sdtlsdt" (DB 1) (DB 0)) ("sdtlsdt" (DB 0) (DB 1))))))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (NOT
  (EXISTS (DB 0)
   (AND ("aCardinal" (DB 0))
        (AND ("sdtlsdt" "xA" (DB 0))
             ("sdtlsdt" (DB 0) ("szSzuzczclpdtrp" "xA")))))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("ttheEmptySet")))
   (AND ("aCardinal" (DB 0))
        (FORALL (DB 0)
         (IMPLIES
          (AND ("aOrdinal" (DB 0))
               (EXISTS (DB 0) ("aElementOf" (DB 0) (DB 1))))
          ("aElementOf" (DB 1) (DB 0))))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("ttheConstantZeroOn" "xM")))
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xM")
             (FORALL (DB 0)
              (IMPLIES ("aElementOf" (DB 0) "xM")
               ("=" ("sdtlbdtrb" (DB 1) (DB 0)) ("ttheEmptySet")))))))))
"conjecture."
("assume" ("aCardinal" "xA"))
(FORMULA ("isRegular" ("szSzuzczclpdtrp" "xA")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (AND
  (AND ("aSubsetOf" "xx" ("szSzuzczclpdtrp" "xA"))
       ("isCofinalIn" "xx" ("szSzuzczclpdtrp" "xA")))
  (NOT ("=" ("ttheCardinalityOf" "xx") ("szSzuzczclpdtrp" "xA")))))
(FORMULA
 (OR ("=" ("ttheCardinalityOf" "xx") "xA")
     ("sdtlsdt" ("ttheCardinalityOf" "xx") "xA")))
(FORMULA
 (AND ("aFunction" "xf")
      (AND ("=" ("szDzozmlpdtrp" "xf") "xA")
           ("=" ("sdtcflbdtrb" "xf" "xA") "xx"))))
"proof."
(FORMULA
 (AND (EXISTS (DB 0) ("aElementOf" (DB 0) "xx"))
      ("=" ("ttheCardinalityOf" "xA") "xA")))
"qed."
(FORMULA
 (AND
  (AND ("aFunction" "xg")
       (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xg") ("szSzuzczclpdtrp" "xA"))))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xg"))
    (AND
     (CONDITION TAG
      (IMPLIES (EXISTS (DB 0) ("aElementOf" (DB 0) (DB 1)))
       (EXISTS (DB 0)
        (AND
         (AND ("aFunction" (DB 0))
              (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xA")
                   ("=" ("sdtcflbdtrb" (DB 0) "xA") (DB 1))))
         (EVALUATION TAG ("=" ("sdtlbdtrb" "xg" (DB 1)) (DB 0)))))))
     (CONDITION TAG
      (IMPLIES (NOT (EXISTS (DB 0) ("aElementOf" (DB 0) (DB 1))))
       (EVALUATION TAG
        ("=" ("sdtlbdtrb" "xg" (DB 0)) ("ttheConstantZeroOn" "xA"))))))))))
(FORMULA
 (AND
  (AND ("aFunction" "xh")
       (DOMAIN TAG
        ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES
     ("aElementOf" ("slpdtcmdtrp" (DB 1) (DB 0)) ("szDzozmlpdtrp" "xh"))
     (EVALUATION TAG
      ("=" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" (DB 1) (DB 0)))
       ("sdtlbdtrb" ("sdtlbdtrb" "xg" ("sdtlbdtrb" "xf" (DB 1))) (DB 0)))))))))
(FORMULA
 (AND ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
      ("=" ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
       ("szSzuzczclpdtrp" "xA"))))
"proof."
(FORMULA ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))
   ("aElementOf" (DB 0)
    ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))))
"proof."
("assume" ("aElementOf" "xn" ("szSzuzczclpdtrp" "xA")))
(FORMULA
 (AND ("aElementOf" "xxi" "xA") ("sdtlsdt" "xn" ("sdtlbdtrb" "xf" "xxi"))))
(FORMULA
 (AND ("aElementOf" "xzeta" "xA")
      ("=" ("sdtlbdtrb" ("sdtlbdtrb" "xg" ("sdtlbdtrb" "xf" "xxi")) "xzeta")
       "xn")))
(FORMULA ("=" "xn" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" "xxi" "xzeta"))))
(FORMULA ("#TH#"))
"proof."
(FORMULA
 ("aElementOf" ("slpdtcmdtrp" "xxi" "xzeta") ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
"qed."
"qed."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES
   ("aElementOf" (DB 0) ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
   ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA")))))
"proof."
("assume"
 ("aElementOf" "xn" ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))
(FORMULA
 (AND (AND ("aElementOf" "xa" "xA") ("aElementOf" "xb" "xA"))
      ("=" "xn" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" "xa" "xb")))))
(FORMULA
 (IMPLIES
  (CASEHYPOTHESIS TAG
   (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" "xa"))))
  ("#TH#")))
(FORMULA
 (IMPLIES
  (CASEHYPOTHESIS TAG
   (NOT (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" "xa")))))
  ("#TH#")))
"qed."
"qed."
(FORMULA
 (OR ("=" ("szSzuzczclpdtrp" "xA") "xA")
     ("sdtlsdt" ("szSzuzczclpdtrp" "xA") "xA")))
"contradiction."
"qed."
"hypothesis."
("assume"
 (FORALL (DB 0)
  (FORALL (DB 0)
   (FORALL (DB 0)
    (FORALL (DB 0)
     (IMPLIES (AND (AND (AND TRUTHTRUTH) TRUTH) TRUTH)
      (IMPLIES
       ("=" ("slpdtcmdtrp" (DB 3) (DB 2)) ("slpdtcmdtrp" (DB 1) (DB 0)))
       (AND ("=" (DB 3) (DB 1)) ("=" (DB 2) (DB 0))))))))))
"hypothesis."
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szPzrzozdlpdtcmdtrp" "xM" "xN")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (EXISTS (DB 0)
             (EXISTS (DB 0)
              (AND (AND ("aElementOf" (DB 1) "xM") ("aElementOf" (DB 0) "xN"))
                   ("=" (DB 2) ("slpdtcmdtrp" (DB 1) (DB 0)))))))))))))
"conjecture."
("assume" (AND TRUTHTRUTH))
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
(FORMULA
 (IMPLIES
  ("aElementOf" ("slpdtcmdtrp" "xx" "xy") ("szPzrzozdlpdtcmdtrp" "xM" "xN"))
  (AND ("aElementOf" "xx" "xM") ("aElementOf" "xy" "xN"))))
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
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aOrdinal" (DB 0))) ("aSet" (DB 0)))))
"hypothesis."
("assume" ("aOrdinal" "xalpha"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xalpha") ("aOrdinal" (DB 0)))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aCardinal" (DB 0))) ("aOrdinal" (DB 0)))))
"hypothesis."
("assume" (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlsdt" "xalpha" "xbeta")) TRUTH))
"hypothesis."
("assume" (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta")))
("assume"
 (IMPLIES ("sdtlsdt" "xalpha" "xbeta") ("aElementOf" "xalpha" "xbeta")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("aSubsetOf" "xM" "xA"))
("assume"
 (IFF (HEADTERM TAG ("isCofinalIn" "xM" "xA"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xA")
    (EXISTS (DB 0)
     (AND ("aElementOf" (DB 0) "xM") ("sdtlsdt" (DB 1) (DB 0))))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("ttheCardinalityOf" "xM")))
   ("aCardinal" (DB 0)))))
("assume" ("aSet" "xM"))
("assume" (EXISTS (DB 0) ("aElementOf" (DB 0) "xM")))
("assume" ("aSet" "xN"))
("assume"
 (IFF
  (OR ("=" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))
      ("sdtlsdt" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN")))
  (EXISTS (DB 0)
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xN")
             ("=" ("sdtcflbdtrb" (DB 0) "xN") "xM"))))))
("assume" ("aCardinal" "xA"))
("assume" ("aElementOf" "xM" "xA"))
("assume" ("aElementOf" "xN" "xM"))
("assume" ("aElementOf" "xN" "xA"))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 ("=" ("ttheCardinalityOf" ("szPzrzozdlpdtcmdtrp" "xM" "xM"))
  ("ttheCardinalityOf" "xM")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("=" ("ttheCardinalityOf" "xA") "xA"))
"hypothesis."
("assume" ("aSet" "xM"))
("assume" ("aSubsetOf" "xN" "xM"))
("assume"
 (OR ("=" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM"))
     ("sdtlsdt" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM"))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (IFF (HEADTERM TAG ("isRegular" "xA"))
  (FORALL (DB 0)
   (IMPLIES (AND ("aSubsetOf" (DB 0) "xA") ("isCofinalIn" (DB 0) "xA"))
    ("=" ("ttheCardinalityOf" (DB 0)) "xA")))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("szSzuzczclpdtrp" "xA")))
   ("aCardinal" (DB 0)))))
"hypothesis."
("assume" (AND ("aOrdinal" "xalpha") ("aOrdinal" "xbeta")))
("assume"
 (OR (OR ("sdtlsdt" "xalpha" "xbeta") ("sdtlsdt" "xbeta" "xalpha"))
     ("=" "xbeta" "xalpha")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("sdtlsdt" "xA" ("szSzuzczclpdtrp" "xA")))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))
   (OR ("=" ("ttheCardinalityOf" (DB 0)) "xA")
       ("sdtlsdt" ("ttheCardinalityOf" (DB 0)) "xA")))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (FORALL (DB 0)
   (IMPLIES (AND ("aCardinal" (DB 1)) ("aCardinal" (DB 0)))
    (NOT (AND ("sdtlsdt" (DB 1) (DB 0)) ("sdtlsdt" (DB 0) (DB 1))))))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume"
 (NOT
  (EXISTS (DB 0)
   (AND ("aCardinal" (DB 0))
        (AND ("sdtlsdt" "xA" (DB 0))
             ("sdtlsdt" (DB 0) ("szSzuzczclpdtrp" "xA")))))))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("ttheEmptySet")))
   (AND ("aCardinal" (DB 0))
        (FORALL (DB 0)
         (IMPLIES
          (AND ("aOrdinal" (DB 0))
               (EXISTS (DB 0) ("aElementOf" (DB 0) (DB 1))))
          ("aElementOf" (DB 1) (DB 0))))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("ttheConstantZeroOn" "xM")))
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xM")
             (FORALL (DB 0)
              (IMPLIES ("aElementOf" (DB 0) "xM")
               ("=" ("sdtlbdtrb" (DB 1) (DB 0)) ("ttheEmptySet")))))))))
"conjecture."
("assume" ("aCardinal" "xA"))
(FORMULA ("isRegular" ("szSzuzczclpdtrp" "xA")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (AND
  (AND ("aSubsetOf" "xx" ("szSzuzczclpdtrp" "xA"))
       ("isCofinalIn" "xx" ("szSzuzczclpdtrp" "xA")))
  (NOT ("=" ("ttheCardinalityOf" "xx") ("szSzuzczclpdtrp" "xA")))))
(FORMULA
 (OR ("=" ("ttheCardinalityOf" "xx") "xA")
     ("sdtlsdt" ("ttheCardinalityOf" "xx") "xA")))
(FORMULA
 (AND ("aFunction" "xf")
      (AND ("=" ("szDzozmlpdtrp" "xf") "xA")
           ("=" ("sdtcflbdtrb" "xf" "xA") "xx"))))
"proof."
(FORMULA
 (AND (EXISTS (DB 0) ("aElementOf" (DB 0) "xx"))
      ("=" ("ttheCardinalityOf" "xA") "xA")))
"qed."
(FORMULA
 (AND
  (AND ("aFunction" "xg")
       (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xg") ("szSzuzczclpdtrp" "xA"))))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xg"))
    (AND
     (CONDITION TAG
      (IMPLIES (EXISTS (DB 0) ("aElementOf" (DB 0) (DB 1)))
       (EXISTS (DB 0)
        (AND
         (AND ("aFunction" (DB 0))
              (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xA")
                   ("=" ("sdtcflbdtrb" (DB 0) "xA") (DB 1))))
         (EVALUATION TAG ("=" ("sdtlbdtrb" "xg" (DB 1)) (DB 0)))))))
     (CONDITION TAG
      (IMPLIES (NOT (EXISTS (DB 0) ("aElementOf" (DB 0) (DB 1))))
       (EVALUATION TAG
        ("=" ("sdtlbdtrb" "xg" (DB 0)) ("ttheConstantZeroOn" "xA"))))))))))
(FORMULA
 (AND
  (AND ("aFunction" "xh")
       (DOMAIN TAG
        ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))
  (FORALL (DB 0)
   (FORALL (DB 0)
    (IMPLIES
     ("aElementOf" ("slpdtcmdtrp" (DB 1) (DB 0)) ("szDzozmlpdtrp" "xh"))
     (EVALUATION TAG
      ("=" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" (DB 1) (DB 0)))
       ("sdtlbdtrb" ("sdtlbdtrb" "xg" ("sdtlbdtrb" "xf" (DB 1))) (DB 0)))))))))
(FORMULA
 (AND ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
      ("=" ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))
       ("szSzuzczclpdtrp" "xA"))))
"proof."
(FORMULA ("=" ("szDzozmlpdtrp" "xh") ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA"))
   ("aElementOf" (DB 0)
    ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))))
"proof."
("assume" ("aElementOf" "xn" ("szSzuzczclpdtrp" "xA")))
(FORMULA
 (AND ("aElementOf" "xxi" "xA") ("sdtlsdt" "xn" ("sdtlbdtrb" "xf" "xxi"))))
(FORMULA
 (AND ("aElementOf" "xzeta" "xA")
      ("=" ("sdtlbdtrb" ("sdtlbdtrb" "xg" ("sdtlbdtrb" "xf" "xxi")) "xzeta")
       "xn")))
(FORMULA ("=" "xn" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" "xxi" "xzeta"))))
(FORMULA ("#TH#"))
"proof."
(FORMULA
 ("aElementOf" ("slpdtcmdtrp" "xxi" "xzeta") ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
"qed."
"qed."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES
   ("aElementOf" (DB 0) ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA")))
   ("aElementOf" (DB 0) ("szSzuzczclpdtrp" "xA")))))
"proof."
("assume"
 ("aElementOf" "xn" ("sdtcflbdtrb" "xh" ("szPzrzozdlpdtcmdtrp" "xA" "xA"))))
(FORMULA
 (AND (AND ("aElementOf" "xa" "xA") ("aElementOf" "xb" "xA"))
      ("=" "xn" ("sdtlbdtrb" "xh" ("slpdtcmdtrp" "xa" "xb")))))
(FORMULA
 (IMPLIES
  (CASEHYPOTHESIS TAG
   (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" "xa"))))
  ("#TH#")))
(FORMULA
 (IMPLIES
  (CASEHYPOTHESIS TAG
   (NOT (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" "xa")))))
  ("#TH#")))
"qed."
"qed."
(FORMULA
 (OR ("=" ("szSzuzczclpdtrp" "xA") "xA")
     ("sdtlsdt" ("szSzuzczclpdtrp" "xA") "xA")))
"contradiction."
"qed."
