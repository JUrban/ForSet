("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH)))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz0"))) ("aElement" (DB 0)))))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz1"))) ("aElement" (DB 0)))))
("assume" ("aElement" "xx"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("smndt" "xx"))) ("aElement" (DB 0)))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtpldt" "xx" "xy")))
   ("aElement" (DB 0)))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xx" "xy")))
   ("aElement" (DB 0)))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume" ("=" ("sdtpldt" "xx" "xy") ("sdtpldt" "xy" "xx")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtpldt" ("sdtpldt" "xx" "xy") "xz")
  ("sdtpldt" "xx" ("sdtpldt" "xy" "xz"))))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtpldt" "xx" ("sdtpldt" "xy" "xz"))
  ("sdtpldt" "xy" ("sdtpldt" "xx" "xz"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtpldt" "xx" ("sz0")) "xx") ("=" "xx" ("sdtpldt" ("sz0") "xx"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtpldt" "xx" ("smndt" "xx")) ("sz0"))
      ("=" ("sz0") ("sdtpldt" ("smndt" "xx") "xx"))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume" ("=" ("sdtasdt" "xx" "xy") ("sdtasdt" "xy" "xx")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtasdt" ("sdtasdt" "xx" "xy") "xz")
  ("sdtasdt" "xx" ("sdtasdt" "xy" "xz"))))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtasdt" "xx" ("sdtasdt" "xy" "xz"))
  ("sdtasdt" "xy" ("sdtasdt" "xx" "xz"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtasdt" "xx" ("sz1")) "xx") ("=" "xx" ("sdtasdt" ("sz1") "xx"))))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtasdt" "xx" ("sdtpldt" "xy" "xz"))
  ("sdtpldt" ("sdtasdt" "xx" "xy") ("sdtasdt" "xx" "xz"))))
("assume" (AND (AND ("aElement" "xy") ("aElement" "xz")) ("aElement" "xx")))
("assume"
 ("=" ("sdtasdt" ("sdtpldt" "xy" "xz") "xx")
  ("sdtpldt" ("sdtasdt" "xy" "xx") ("sdtasdt" "xz" "xx"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtasdt" ("smndt" ("sz1")) "xx") ("smndt" "xx"))
      ("=" ("smndt" "xx") ("sdtasdt" "xx" ("smndt" ("sz1"))))))
("assume" ("aElement" "xx"))
(FORMULA
 (AND ("=" ("sdtasdt" "xx" ("sz0")) ("sz0"))
      ("=" ("sz0") ("sdtasdt" ("sz0") "xx"))))
"proof."
(FORMULA ("=" ("sdtasdt" "xx" ("sz0")) ("sz0")))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xx" ("sz0"))
   ("sdtpldt" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sz0"))))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sdtpldt" ("sz0") ("sz0"))))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xx" ("sdtpldt" ("sz0") ("sz0")))
   ("sdtpldt" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sz0"))))))
"qed."
"qed."
(FORMULA ("=" ("sdtasdt" ("sz0") "xx") ("sz0")))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("sz0") "xx")
   ("sdtpldt" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sz0") "xx")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sdtpldt" ("sz0") ("sz0")) "xx"))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("sdtpldt" ("sz0") ("sz0")) "xx")
   ("sdtpldt" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sz0") "xx")))))
"qed."
"qed."
"qed."
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IMPLIES (AND (NOT ("=" "xx" ("sz0"))) (NOT ("=" "xy" ("sz0"))))
  (NOT ("=" ("sdtasdt" "xx" "xy") ("sz0")))))
("assume" (NOT ("=" ("sz1") ("sz0"))))
"hypothesis."
("assume" ("aSet" "xX"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xX") ("aElement" (DB 0)))))
("assume" (AND ("aSet" "xX") ("aSet" "xY")))
("assume"
 (IMPLIES
  (AND
   (FORALL (DB 0)
    (IMPLIES ("aElementOf" (DB 0) "xX") ("aElementOf" (DB 0) "xY")))
   (FORALL (DB 0)
    (IMPLIES ("aElementOf" (DB 0) "xY") ("aElementOf" (DB 0) "xX"))))
  ("=" "xX" "xY")))
("assume" (AND ("aSet" "xX") ("aSet" "xY")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtplqtdt" "xX" "xY")))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElement" (DB 0))
          (IFF ("aElementOf" (DB 0) (DB 1))
           (EXISTS (DB 0)
            (AND ("aElementOf" (DB 0) "xX")
                 (EXISTS (DB 0)
                  (AND ("aElementOf" (DB 0) "xY")
                       ("=" (DB 2) ("sdtpldt" (DB 1) (DB 0))))))))))))))
("assume" (AND ("aSet" "xX") ("aSet" "xY")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtasasdt" "xX" "xY")))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElement" (DB 0))
          (IFF ("aElementOf" (DB 0) ("sdtplqtdt" "xX" "xY"))
           (AND ("aElementOf" (DB 0) "xX") ("aElementOf" (DB 0) "xY")))))))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aIdeal" (DB 0)))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1))
          (AND
           (FORALL (DB 0)
            (IMPLIES ("aElementOf" (DB 0) (DB 2))
             ("aElementOf" ("sdtpldt" (DB 1) (DB 0)) (DB 2))))
           (FORALL (DB 0)
            (IMPLIES ("aElement" (DB 0))
             ("aElementOf" ("sdtasdt" (DB 0) (DB 1)) (DB 2)))))))))))
("assume" (AND ("aIdeal" "xI") ("aIdeal" "xJ")))
(FORMULA ("aIdeal" ("sdtplqtdt" "xI" "xJ")))
"proof."
("assume" ("aElementOf" "xx" ("sdtplqtdt" "xI" "xJ")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("sdtplqtdt" "xI" "xJ"))
   ("aElementOf" ("sdtpldt" "xx" (DB 0)) ("sdtplqtdt" "xI" "xJ")))))
"proof."
("assume" ("aElementOf" "xy" ("sdtplqtdt" "xI" "xJ")))
(FORMULA
 (AND ("aElementOf" "xk" "xI")
      (AND ("aElementOf" "xl" "xJ") ("=" "xx" ("sdtpldt" "xk" "xl")))))
(FORMULA
 (AND ("aElementOf" "xm" "xI")
      (AND ("aElementOf" "xn" "xJ") ("=" "xy" ("sdtpldt" "xm" "xn")))))
(FORMULA
 (AND ("aElementOf" ("sdtpldt" "xk" "xm") "xI")
      ("aElementOf" ("sdtpldt" "xl" "xn") "xJ")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy")
   ("sdtpldt" ("sdtpldt" "xk" "xm") ("sdtpldt" "xl" "xn")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy")
   ("sdtpldt" ("sdtpldt" "xk" "xm") ("sdtpldt" "xl" "xn")))))
"qed."
(FORMULA ("#TH#"))
"qed."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0))
   ("aElementOf" ("sdtasdt" (DB 0) "xx") ("sdtplqtdt" "xI" "xJ")))))
"proof."
("assume" ("aElement" "xz"))
(FORMULA
 (AND ("aElementOf" "xk" "xI")
      (AND ("aElementOf" "xl" "xJ") ("=" "xx" ("sdtpldt" "xk" "xl")))))
(FORMULA
 (AND ("aElementOf" ("sdtasdt" "xz" "xk") "xI")
      ("aElementOf" ("sdtasdt" "xz" "xl") "xJ")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx")
   ("sdtpldt" ("sdtasdt" "xz" "xk") ("sdtasdt" "xz" "xl")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx")
   ("sdtpldt" ("sdtasdt" "xz" "xk") ("sdtasdt" "xz" "xl")))))
"qed."
(FORMULA ("#TH#"))
"qed."
"qed."
("assume" (AND ("aIdeal" "xI") ("aIdeal" "xJ")))
(FORMULA ("aIdeal" ("sdtasasdt" "xI" "xJ")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aIdeal" "xI")))
("assume"
 (IFF (HEADTERM TAG ("sdteqdtlpzmzozddtrp" "xx" "xy" "xI"))
  ("aElementOf" ("sdtpldt" "xx" ("smndt" "xy")) "xI")))
("assume" (AND ("aIdeal" "xI") ("aIdeal" "xJ")))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0)) ("aElementOf" (DB 0) ("sdtplqtdt" "xI" "xJ")))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElement" (DB 0))
       (AND ("sdteqdtlpzmzozddtrp" (DB 0) "xx" "xI")
            ("sdteqdtlpzmzozddtrp" (DB 0) "xy" "xJ")))))
"proof."
(FORMULA
 (AND ("aElementOf" "xa" "xI")
      (AND ("aElementOf" "xb" "xJ") ("=" ("sdtpldt" "xa" "xb") ("sz1")))))
(FORMULA ("=" "xw" ("sdtpldt" ("sdtasdt" "xy" "xa") ("sdtasdt" "xx" "xb"))))
(FORMULA
 (AND ("sdteqdtlpzmzozddtrp" "xw" "xx" "xI")
      ("sdteqdtlpzmzozddtrp" "xw" "xy" "xJ")))
"proof."
(FORMULA ("aElementOf" ("sdtpldt" "xw" ("smndt" "xx")) "xI"))
"proof."
(FORMULA
 ("=" ("sdtpldt" "xw" ("smndt" "xx"))
  ("sdtpldt" ("sdtasdt" "xy" "xa")
   ("sdtpldt" ("sdtasdt" "xx" "xb") ("smndt" "xx")))))
(FORMULA
 ("aElementOf" ("sdtasdt" "xx" ("sdtpldt" "xb" ("smndt" ("sz1")))) "xI"))
"qed."
(FORMULA ("aElementOf" ("sdtpldt" "xw" ("smndt" "xy")) "xJ"))
"proof."
(FORMULA
 ("=" ("sdtpldt" "xw" ("smndt" "xy"))
  ("sdtpldt" ("sdtasdt" "xx" "xb")
   ("sdtpldt" ("sdtasdt" "xy" "xa") ("smndt" "xy")))))
(FORMULA
 ("aElementOf" ("sdtasdt" "xy" ("sdtpldt" "xa" ("smndt" ("sz1")))) "xJ"))
"qed."
"qed."
"qed."
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aNaturalNumber" (DB 0))) TRUTH)))
("assume" (AND ("aElement" "xx") (NOT ("=" "xx" ("sz0")))))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sbrdtbr" "xx")))
   ("aNaturalNumber" (DB 0)))))
("assume"
 (AND (AND ("aElement" "xx") ("aElement" "xy")) (NOT ("=" "xy" ("sz0")))))
("assume"
 (EXISTS (DB 0)
  (EXISTS (DB 0)
   (AND (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
        (AND ("=" "xx" ("sdtpldt" ("sdtasdt" (DB 1) "xy") (DB 0)))
             (IMPLIES (NOT ("=" (DB 0) ("sz0")))
              ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" "xy"))))))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IFF (HEADTERM TAG ("doDivides" "xx" "xy"))
  (EXISTS (DB 0) (AND ("aElement" (DB 0)) ("=" ("sdtasdt" "xx" (DB 0)) "xy")))))
("assume" ("aElement" "xx"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aDivisorOf" (DB 0) "xx"))
   (AND ("aElement" (DB 0)) ("doDivides" (DB 0) "xx")))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aGcdOfAnd" (DB 0) "xx" "xy"))
   (AND (AND ("aDivisorOf" (DB 0) "xx") ("aDivisorOf" (DB 0) "xy"))
        (FORALL (DB 0)
         (IMPLIES (AND ("aDivisorOf" (DB 0) "xx") ("aDivisorOf" (DB 0) "xy"))
          ("doDivides" (DB 0) (DB 1))))))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IFF (HEADTERM TAG ("misRelativelyPrime" "xx" "xy"))
  ("aGcdOfAnd" ("sz1") "xx" "xy")))
("assume" ("aElement" "xc"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("slsdtgt" "xc")))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElement" (DB 0))
          (IFF ("aElementOf" (DB 0) (DB 1))
           (EXISTS (DB 0)
            (AND ("aElement" (DB 0))
                 ("=" (DB 1) ("sdtasdt" "xc" (DB 0))))))))))))
("assume" ("aElement" "xc"))
(FORMULA ("aIdeal" ("slsdtgt" "xc")))
"proof."
("assume" ("aElementOf" "xx" ("slsdtgt" "xc")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("slsdtgt" "xc"))
   ("aElementOf" ("sdtpldt" "xx" (DB 0)) ("slsdtgt" "xc")))))
"proof."
("assume" ("aElementOf" "xy" ("slsdtgt" "xc")))
(FORMULA (AND ("aElement" "xu") ("=" ("sdtasdt" "xc" "xu") "xx")))
(FORMULA (AND ("aElement" "xv") ("=" ("sdtasdt" "xc" "xv") "xy")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy") ("sdtasdt" "xc" ("sdtpldt" "xu" "xv")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy") ("sdtasdt" "xc" ("sdtpldt" "xu" "xv")))))
"qed."
(FORMULA ("#TH#"))
"qed."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0))
   ("aElementOf" ("sdtasdt" (DB 0) "xx") ("slsdtgt" "xc")))))
"proof."
("assume" ("aElement" "xz"))
(FORMULA (AND ("aElement" "xu") ("=" ("sdtasdt" "xc" "xu") "xx")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx") ("sdtasdt" "xc" ("sdtasdt" "xu" "xz")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx") ("sdtasdt" "xc" ("sdtasdt" "xu" "xz")))))
"qed."
(FORMULA ("#TH#"))
"qed."
"qed."
("assume" (AND ("aElement" "xa") ("aElement" "xb")))
("assume" (OR (NOT ("=" "xa" ("sz0"))) (NOT ("=" "xb" ("sz0")))))
("assume" ("aGcdOfAnd" "xc" "xa" "xb"))
(FORMULA ("aElementOf" "xc" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb"))))
"proof."
(FORMULA
 (AND ("aIdeal" "xI")
      ("=" "xI" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))))
(FORMULA
 (AND
  (AND ("aElementOf" ("sz0") ("slsdtgt" "xa"))
       ("aElementOf" "xa" ("slsdtgt" "xa")))
  (AND ("aElementOf" ("sz0") ("slsdtgt" "xb"))
       ("aElementOf" "xb" ("slsdtgt" "xb")))))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
       (NOT ("=" (DB 0) ("sz0"))))))
"proof."
(FORMULA
 (AND ("aElementOf" "xa" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
      ("aElementOf" "xb" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))))
"qed."
(FORMULA
 (AND ("aElementOf" "xu" "xI")
      (AND (NOT ("=" "xu" ("sz0")))
           (FORALL (DB 0)
            (IMPLIES
             (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
             (NOT ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" "xu"))))))))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
   (IMPLIES
    (INDUCTIONHYPOTHESIS TAG
     (FORALL (DB 0)
      (IMPLIES (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
       (IMPLIES ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))
        (EXISTS (DB 0)
         (AND ("aElementOf" (DB 0) "xI")
              (AND (NOT ("=" (DB 0) ("sz0")))
                   (FORALL (DB 0)
                    (IMPLIES
                     (AND ("aElementOf" (DB 0) "xI")
                          (NOT ("=" (DB 0) ("sz0"))))
                     (NOT
                      ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))))))))))))
    (EXISTS (DB 0)
     (AND ("aElementOf" (DB 0) "xI")
          (AND (NOT ("=" (DB 0) ("sz0")))
               (FORALL (DB 0)
                (IMPLIES
                 (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
                 (NOT ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))))))))))))
"qed."
(FORMULA (AND ("aDivisorOf" "xu" "xa") ("aDivisorOf" "xu" "xb")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (EXISTS (DB 0)
  (EXISTS (DB 0)
   (AND (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
        ("=" "xu"
         ("sdtpldt" ("sdtasdt" "xa" (DB 1)) ("sdtasdt" "xb" (DB 0))))))))
"proof."
(FORMULA
 (AND ("aElementOf" "xk" ("slsdtgt" "xa"))
      (AND ("aElementOf" "xl" ("slsdtgt" "xb"))
           ("=" "xu" ("sdtpldt" "xk" "xl")))))
(FORMULA
 (AND (AND ("aElement" "xx") ("aElement" "xy"))
      (AND ("=" "xk" ("sdtasdt" "xa" "xx")) ("=" "xl" ("sdtasdt" "xb" "xy")))))
(FORMULA ("#TH#"))
"qed."
(FORMULA (IMPLIES (CASEHYPOTHESIS TAG (NOT ("doDivides" "xu" "xa"))) ("#TH#")))
"proof."
(FORMULA
 (AND (AND ("aElement" "xq") ("aElement" "xr"))
      (AND ("=" "xa" ("sdtpldt" ("sdtasdt" "xq" "xu") "xr"))
           (OR ("=" "xr" ("sz0"))
               ("iLess" ("sbrdtbr" "xr") ("sbrdtbr" "xu"))))))
(FORMULA (NOT ("=" "xr" ("sz0"))))
(FORMULA ("aElementOf" ("smndt" ("sdtasdt" "xq" "xu")) "xI"))
(FORMULA ("aElementOf" "xa" "xI"))
(FORMULA ("=" "xr" ("sdtpldt" ("smndt" ("sdtasdt" "xq" "xu")) "xa")))
(FORMULA ("aElementOf" "xr" "xI"))
"qed."
(FORMULA (IMPLIES (CASEHYPOTHESIS TAG (NOT ("doDivides" "xu" "xb"))) ("#TH#")))
"proof."
(FORMULA
 (AND (AND ("aElement" "xq") ("aElement" "xr"))
      (AND ("=" "xb" ("sdtpldt" ("sdtasdt" "xq" "xu") "xr"))
           (OR ("=" "xr" ("sz0"))
               ("iLess" ("sbrdtbr" "xr") ("sbrdtbr" "xu"))))))
(FORMULA (NOT ("=" "xr" ("sz0"))))
(FORMULA ("aElementOf" ("smndt" ("sdtasdt" "xq" "xu")) "xI"))
(FORMULA ("aElementOf" "xb" "xI"))
(FORMULA ("=" "xr" ("sdtpldt" ("smndt" ("sdtasdt" "xq" "xu")) "xb")))
(FORMULA ("aElementOf" "xr" "xI"))
"qed."
"qed."
(FORMULA ("doDivides" "xu" "xc"))
(FORMULA ("#TH#"))
"proof."
(FORMULA (AND ("aElement" "xz") ("=" "xc" ("sdtasdt" "xz" "xu"))))
(FORMULA ("aElementOf" "xc" "xI"))
"qed."
"qed."
("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aElement" (DB 0))) TRUTH)))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz0"))) ("aElement" (DB 0)))))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz1"))) ("aElement" (DB 0)))))
("assume" ("aElement" "xx"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("smndt" "xx"))) ("aElement" (DB 0)))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtpldt" "xx" "xy")))
   ("aElement" (DB 0)))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xx" "xy")))
   ("aElement" (DB 0)))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume" ("=" ("sdtpldt" "xx" "xy") ("sdtpldt" "xy" "xx")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtpldt" ("sdtpldt" "xx" "xy") "xz")
  ("sdtpldt" "xx" ("sdtpldt" "xy" "xz"))))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtpldt" "xx" ("sdtpldt" "xy" "xz"))
  ("sdtpldt" "xy" ("sdtpldt" "xx" "xz"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtpldt" "xx" ("sz0")) "xx") ("=" "xx" ("sdtpldt" ("sz0") "xx"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtpldt" "xx" ("smndt" "xx")) ("sz0"))
      ("=" ("sz0") ("sdtpldt" ("smndt" "xx") "xx"))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume" ("=" ("sdtasdt" "xx" "xy") ("sdtasdt" "xy" "xx")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtasdt" ("sdtasdt" "xx" "xy") "xz")
  ("sdtasdt" "xx" ("sdtasdt" "xy" "xz"))))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtasdt" "xx" ("sdtasdt" "xy" "xz"))
  ("sdtasdt" "xy" ("sdtasdt" "xx" "xz"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtasdt" "xx" ("sz1")) "xx") ("=" "xx" ("sdtasdt" ("sz1") "xx"))))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aElement" "xz")))
("assume"
 ("=" ("sdtasdt" "xx" ("sdtpldt" "xy" "xz"))
  ("sdtpldt" ("sdtasdt" "xx" "xy") ("sdtasdt" "xx" "xz"))))
("assume" (AND (AND ("aElement" "xy") ("aElement" "xz")) ("aElement" "xx")))
("assume"
 ("=" ("sdtasdt" ("sdtpldt" "xy" "xz") "xx")
  ("sdtpldt" ("sdtasdt" "xy" "xx") ("sdtasdt" "xz" "xx"))))
("assume" ("aElement" "xx"))
("assume"
 (AND ("=" ("sdtasdt" ("smndt" ("sz1")) "xx") ("smndt" "xx"))
      ("=" ("smndt" "xx") ("sdtasdt" "xx" ("smndt" ("sz1"))))))
("assume" ("aElement" "xx"))
(FORMULA
 (AND ("=" ("sdtasdt" "xx" ("sz0")) ("sz0"))
      ("=" ("sz0") ("sdtasdt" ("sz0") "xx"))))
"proof."
(FORMULA ("=" ("sdtasdt" "xx" ("sz0")) ("sz0")))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xx" ("sz0"))
   ("sdtpldt" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sz0"))))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sdtpldt" ("sz0") ("sz0"))))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xx" ("sdtpldt" ("sz0") ("sz0")))
   ("sdtpldt" ("sdtasdt" "xx" ("sz0")) ("sdtasdt" "xx" ("sz0"))))))
"qed."
"qed."
(FORMULA ("=" ("sdtasdt" ("sz0") "xx") ("sz0")))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("sz0") "xx")
   ("sdtpldt" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sz0") "xx")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sdtpldt" ("sz0") ("sz0")) "xx"))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("sdtpldt" ("sz0") ("sz0")) "xx")
   ("sdtpldt" ("sdtasdt" ("sz0") "xx") ("sdtasdt" ("sz0") "xx")))))
"qed."
"qed."
"qed."
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IMPLIES (AND (NOT ("=" "xx" ("sz0"))) (NOT ("=" "xy" ("sz0"))))
  (NOT ("=" ("sdtasdt" "xx" "xy") ("sz0")))))
("assume" (NOT ("=" ("sz1") ("sz0"))))
"hypothesis."
("assume" ("aSet" "xX"))
("assume"
 (FORALL (DB 0) (IMPLIES ("aElementOf" (DB 0) "xX") ("aElement" (DB 0)))))
("assume" (AND ("aSet" "xX") ("aSet" "xY")))
("assume"
 (IMPLIES
  (AND
   (FORALL (DB 0)
    (IMPLIES ("aElementOf" (DB 0) "xX") ("aElementOf" (DB 0) "xY")))
   (FORALL (DB 0)
    (IMPLIES ("aElementOf" (DB 0) "xY") ("aElementOf" (DB 0) "xX"))))
  ("=" "xX" "xY")))
("assume" (AND ("aSet" "xX") ("aSet" "xY")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtplqtdt" "xX" "xY")))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElement" (DB 0))
          (IFF ("aElementOf" (DB 0) (DB 1))
           (EXISTS (DB 0)
            (AND ("aElementOf" (DB 0) "xX")
                 (EXISTS (DB 0)
                  (AND ("aElementOf" (DB 0) "xY")
                       ("=" (DB 2) ("sdtpldt" (DB 1) (DB 0))))))))))))))
("assume" (AND ("aSet" "xX") ("aSet" "xY")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtasasdt" "xX" "xY")))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElement" (DB 0))
          (IFF ("aElementOf" (DB 0) ("sdtplqtdt" "xX" "xY"))
           (AND ("aElementOf" (DB 0) "xX") ("aElementOf" (DB 0) "xY")))))))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aIdeal" (DB 0)))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1))
          (AND
           (FORALL (DB 0)
            (IMPLIES ("aElementOf" (DB 0) (DB 2))
             ("aElementOf" ("sdtpldt" (DB 1) (DB 0)) (DB 2))))
           (FORALL (DB 0)
            (IMPLIES ("aElement" (DB 0))
             ("aElementOf" ("sdtasdt" (DB 0) (DB 1)) (DB 2)))))))))))
("assume" (AND ("aIdeal" "xI") ("aIdeal" "xJ")))
(FORMULA ("aIdeal" ("sdtplqtdt" "xI" "xJ")))
"proof."
("assume" ("aElementOf" "xx" ("sdtplqtdt" "xI" "xJ")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("sdtplqtdt" "xI" "xJ"))
   ("aElementOf" ("sdtpldt" "xx" (DB 0)) ("sdtplqtdt" "xI" "xJ")))))
"proof."
("assume" ("aElementOf" "xy" ("sdtplqtdt" "xI" "xJ")))
(FORMULA
 (AND ("aElementOf" "xk" "xI")
      (AND ("aElementOf" "xl" "xJ") ("=" "xx" ("sdtpldt" "xk" "xl")))))
(FORMULA
 (AND ("aElementOf" "xm" "xI")
      (AND ("aElementOf" "xn" "xJ") ("=" "xy" ("sdtpldt" "xm" "xn")))))
(FORMULA
 (AND ("aElementOf" ("sdtpldt" "xk" "xm") "xI")
      ("aElementOf" ("sdtpldt" "xl" "xn") "xJ")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy")
   ("sdtpldt" ("sdtpldt" "xk" "xm") ("sdtpldt" "xl" "xn")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy")
   ("sdtpldt" ("sdtpldt" "xk" "xm") ("sdtpldt" "xl" "xn")))))
"qed."
(FORMULA ("#TH#"))
"qed."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0))
   ("aElementOf" ("sdtasdt" (DB 0) "xx") ("sdtplqtdt" "xI" "xJ")))))
"proof."
("assume" ("aElement" "xz"))
(FORMULA
 (AND ("aElementOf" "xk" "xI")
      (AND ("aElementOf" "xl" "xJ") ("=" "xx" ("sdtpldt" "xk" "xl")))))
(FORMULA
 (AND ("aElementOf" ("sdtasdt" "xz" "xk") "xI")
      ("aElementOf" ("sdtasdt" "xz" "xl") "xJ")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx")
   ("sdtpldt" ("sdtasdt" "xz" "xk") ("sdtasdt" "xz" "xl")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx")
   ("sdtpldt" ("sdtasdt" "xz" "xk") ("sdtasdt" "xz" "xl")))))
"qed."
(FORMULA ("#TH#"))
"qed."
"qed."
("assume" (AND ("aIdeal" "xI") ("aIdeal" "xJ")))
(FORMULA ("aIdeal" ("sdtasasdt" "xI" "xJ")))
("assume" (AND (AND ("aElement" "xx") ("aElement" "xy")) ("aIdeal" "xI")))
("assume"
 (IFF (HEADTERM TAG ("sdteqdtlpzmzozddtrp" "xx" "xy" "xI"))
  ("aElementOf" ("sdtpldt" "xx" ("smndt" "xy")) "xI")))
("assume" (AND ("aIdeal" "xI") ("aIdeal" "xJ")))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0)) ("aElementOf" (DB 0) ("sdtplqtdt" "xI" "xJ")))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElement" (DB 0))
       (AND ("sdteqdtlpzmzozddtrp" (DB 0) "xx" "xI")
            ("sdteqdtlpzmzozddtrp" (DB 0) "xy" "xJ")))))
"proof."
(FORMULA
 (AND ("aElementOf" "xa" "xI")
      (AND ("aElementOf" "xb" "xJ") ("=" ("sdtpldt" "xa" "xb") ("sz1")))))
(FORMULA ("=" "xw" ("sdtpldt" ("sdtasdt" "xy" "xa") ("sdtasdt" "xx" "xb"))))
(FORMULA
 (AND ("sdteqdtlpzmzozddtrp" "xw" "xx" "xI")
      ("sdteqdtlpzmzozddtrp" "xw" "xy" "xJ")))
"proof."
(FORMULA ("aElementOf" ("sdtpldt" "xw" ("smndt" "xx")) "xI"))
"proof."
(FORMULA
 ("=" ("sdtpldt" "xw" ("smndt" "xx"))
  ("sdtpldt" ("sdtasdt" "xy" "xa")
   ("sdtpldt" ("sdtasdt" "xx" "xb") ("smndt" "xx")))))
(FORMULA
 ("aElementOf" ("sdtasdt" "xx" ("sdtpldt" "xb" ("smndt" ("sz1")))) "xI"))
"qed."
(FORMULA ("aElementOf" ("sdtpldt" "xw" ("smndt" "xy")) "xJ"))
"proof."
(FORMULA
 ("=" ("sdtpldt" "xw" ("smndt" "xy"))
  ("sdtpldt" ("sdtasdt" "xx" "xb")
   ("sdtpldt" ("sdtasdt" "xy" "xa") ("smndt" "xy")))))
(FORMULA
 ("aElementOf" ("sdtasdt" "xy" ("sdtpldt" "xa" ("smndt" ("sz1")))) "xJ"))
"qed."
"qed."
"qed."
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aNaturalNumber" (DB 0))) TRUTH)))
("assume" (AND ("aElement" "xx") (NOT ("=" "xx" ("sz0")))))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sbrdtbr" "xx")))
   ("aNaturalNumber" (DB 0)))))
("assume"
 (AND (AND ("aElement" "xx") ("aElement" "xy")) (NOT ("=" "xy" ("sz0")))))
("assume"
 (EXISTS (DB 0)
  (EXISTS (DB 0)
   (AND (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
        (AND ("=" "xx" ("sdtpldt" ("sdtasdt" (DB 1) "xy") (DB 0)))
             (IMPLIES (NOT ("=" (DB 0) ("sz0")))
              ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" "xy"))))))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IFF (HEADTERM TAG ("doDivides" "xx" "xy"))
  (EXISTS (DB 0) (AND ("aElement" (DB 0)) ("=" ("sdtasdt" "xx" (DB 0)) "xy")))))
("assume" ("aElement" "xx"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aDivisorOf" (DB 0) "xx"))
   (AND ("aElement" (DB 0)) ("doDivides" (DB 0) "xx")))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aGcdOfAnd" (DB 0) "xx" "xy"))
   (AND (AND ("aDivisorOf" (DB 0) "xx") ("aDivisorOf" (DB 0) "xy"))
        (FORALL (DB 0)
         (IMPLIES (AND ("aDivisorOf" (DB 0) "xx") ("aDivisorOf" (DB 0) "xy"))
          ("doDivides" (DB 0) (DB 1))))))))
("assume" (AND ("aElement" "xx") ("aElement" "xy")))
("assume"
 (IFF (HEADTERM TAG ("misRelativelyPrime" "xx" "xy"))
  ("aGcdOfAnd" ("sz1") "xx" "xy")))
("assume" ("aElement" "xc"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("slsdtgt" "xc")))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElement" (DB 0))
          (IFF ("aElementOf" (DB 0) (DB 1))
           (EXISTS (DB 0)
            (AND ("aElement" (DB 0))
                 ("=" (DB 1) ("sdtasdt" "xc" (DB 0))))))))))))
("assume" ("aElement" "xc"))
(FORMULA ("aIdeal" ("slsdtgt" "xc")))
"proof."
("assume" ("aElementOf" "xx" ("slsdtgt" "xc")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("slsdtgt" "xc"))
   ("aElementOf" ("sdtpldt" "xx" (DB 0)) ("slsdtgt" "xc")))))
"proof."
("assume" ("aElementOf" "xy" ("slsdtgt" "xc")))
(FORMULA (AND ("aElement" "xu") ("=" ("sdtasdt" "xc" "xu") "xx")))
(FORMULA (AND ("aElement" "xv") ("=" ("sdtasdt" "xc" "xv") "xy")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy") ("sdtasdt" "xc" ("sdtpldt" "xu" "xv")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtpldt" "xx" "xy") ("sdtasdt" "xc" ("sdtpldt" "xu" "xv")))))
"qed."
(FORMULA ("#TH#"))
"qed."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElement" (DB 0))
   ("aElementOf" ("sdtasdt" (DB 0) "xx") ("slsdtgt" "xc")))))
"proof."
("assume" ("aElement" "xz"))
(FORMULA (AND ("aElement" "xu") ("=" ("sdtasdt" "xc" "xu") "xx")))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx") ("sdtasdt" "xc" ("sdtasdt" "xu" "xz")))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xz" "xx") ("sdtasdt" "xc" ("sdtasdt" "xu" "xz")))))
"qed."
(FORMULA ("#TH#"))
"qed."
"qed."
("assume" (AND ("aElement" "xa") ("aElement" "xb")))
("assume" (OR (NOT ("=" "xa" ("sz0"))) (NOT ("=" "xb" ("sz0")))))
("assume" ("aGcdOfAnd" "xc" "xa" "xb"))
(FORMULA ("aElementOf" "xc" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb"))))
"proof."
(FORMULA
 (AND ("aIdeal" "xI")
      ("=" "xI" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))))
(FORMULA
 (AND
  (AND ("aElementOf" ("sz0") ("slsdtgt" "xa"))
       ("aElementOf" "xa" ("slsdtgt" "xa")))
  (AND ("aElementOf" ("sz0") ("slsdtgt" "xb"))
       ("aElementOf" "xb" ("slsdtgt" "xb")))))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
       (NOT ("=" (DB 0) ("sz0"))))))
"proof."
(FORMULA
 (AND ("aElementOf" "xa" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))
      ("aElementOf" "xb" ("sdtplqtdt" ("slsdtgt" "xa") ("slsdtgt" "xb")))))
"qed."
(FORMULA
 (AND ("aElementOf" "xu" "xI")
      (AND (NOT ("=" "xu" ("sz0")))
           (FORALL (DB 0)
            (IMPLIES
             (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
             (NOT ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" "xu"))))))))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
   (IMPLIES
    (INDUCTIONHYPOTHESIS TAG
     (FORALL (DB 0)
      (IMPLIES (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
       (IMPLIES ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))
        (EXISTS (DB 0)
         (AND ("aElementOf" (DB 0) "xI")
              (AND (NOT ("=" (DB 0) ("sz0")))
                   (FORALL (DB 0)
                    (IMPLIES
                     (AND ("aElementOf" (DB 0) "xI")
                          (NOT ("=" (DB 0) ("sz0"))))
                     (NOT
                      ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))))))))))))
    (EXISTS (DB 0)
     (AND ("aElementOf" (DB 0) "xI")
          (AND (NOT ("=" (DB 0) ("sz0")))
               (FORALL (DB 0)
                (IMPLIES
                 (AND ("aElementOf" (DB 0) "xI") (NOT ("=" (DB 0) ("sz0"))))
                 (NOT ("iLess" ("sbrdtbr" (DB 0)) ("sbrdtbr" (DB 1)))))))))))))
"qed."
(FORMULA (AND ("aDivisorOf" "xu" "xa") ("aDivisorOf" "xu" "xb")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (EXISTS (DB 0)
  (EXISTS (DB 0)
   (AND (AND ("aElement" (DB 1)) ("aElement" (DB 0)))
        ("=" "xu"
         ("sdtpldt" ("sdtasdt" "xa" (DB 1)) ("sdtasdt" "xb" (DB 0))))))))
"proof."
(FORMULA
 (AND ("aElementOf" "xk" ("slsdtgt" "xa"))
      (AND ("aElementOf" "xl" ("slsdtgt" "xb"))
           ("=" "xu" ("sdtpldt" "xk" "xl")))))
(FORMULA
 (AND (AND ("aElement" "xx") ("aElement" "xy"))
      (AND ("=" "xk" ("sdtasdt" "xa" "xx")) ("=" "xl" ("sdtasdt" "xb" "xy")))))
(FORMULA ("#TH#"))
"qed."
(FORMULA (IMPLIES (CASEHYPOTHESIS TAG (NOT ("doDivides" "xu" "xa"))) ("#TH#")))
"proof."
(FORMULA
 (AND (AND ("aElement" "xq") ("aElement" "xr"))
      (AND ("=" "xa" ("sdtpldt" ("sdtasdt" "xq" "xu") "xr"))
           (OR ("=" "xr" ("sz0"))
               ("iLess" ("sbrdtbr" "xr") ("sbrdtbr" "xu"))))))
(FORMULA (NOT ("=" "xr" ("sz0"))))
(FORMULA ("aElementOf" ("smndt" ("sdtasdt" "xq" "xu")) "xI"))
(FORMULA ("aElementOf" "xa" "xI"))
(FORMULA ("=" "xr" ("sdtpldt" ("smndt" ("sdtasdt" "xq" "xu")) "xa")))
(FORMULA ("aElementOf" "xr" "xI"))
"qed."
(FORMULA (IMPLIES (CASEHYPOTHESIS TAG (NOT ("doDivides" "xu" "xb"))) ("#TH#")))
"proof."
(FORMULA
 (AND (AND ("aElement" "xq") ("aElement" "xr"))
      (AND ("=" "xb" ("sdtpldt" ("sdtasdt" "xq" "xu") "xr"))
           (OR ("=" "xr" ("sz0"))
               ("iLess" ("sbrdtbr" "xr") ("sbrdtbr" "xu"))))))
(FORMULA (NOT ("=" "xr" ("sz0"))))
(FORMULA ("aElementOf" ("smndt" ("sdtasdt" "xq" "xu")) "xI"))
(FORMULA ("aElementOf" "xb" "xI"))
(FORMULA ("=" "xr" ("sdtpldt" ("smndt" ("sdtasdt" "xq" "xu")) "xb")))
(FORMULA ("aElementOf" "xr" "xI"))
"qed."
"qed."
(FORMULA ("doDivides" "xu" "xc"))
(FORMULA ("#TH#"))
"proof."
(FORMULA (AND ("aElement" "xz") ("=" "xc" ("sdtasdt" "xz" "xu"))))
(FORMULA ("aElementOf" "xc" "xI"))
"qed."
"qed."
