"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xM"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xM")))))))
"hypothesis."
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtbsdt" "xM" "xN")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (AND ("aElementOf" (DB 0) "xM")
                (NOT ("aElementOf" (DB 0) "xN")))))))))
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
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aCardinal" (DB 0))) ("aSet" (DB 0)))))
"hypothesis."
("assume" (AND ("aCardinal" "xA") ("aCardinal" "xB")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlsdt" "xA" "xB")) TRUTH))
"hypothesis."
("assume" (AND (AND ("aCardinal" "xA") ("aCardinal" "xB")) ("aCardinal" "xC")))
("assume"
 (IMPLIES (AND ("sdtlsdt" "xA" "xB") ("sdtlsdt" "xB" "xC"))
  ("sdtlsdt" "xA" "xC")))
"hypothesis."
("assume" (AND ("aCardinal" "xA") ("aCardinal" "xB")))
("assume" (OR (OR ("sdtlsdt" "xA" "xB") ("sdtlsdt" "xB" "xA")) ("=" "xB" "xA")))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("ttheCardinalityOf" "xM")))
   ("aCardinal" (DB 0)))))
("assume" ("aFunction" "xf"))
("assume" ("aSubsetOf" "xM" ("szDzozmlpdtrp" "xf")))
("assume"
 (OR
  ("=" ("ttheCardinalityOf" ("sdtcflbdtrb" "xf" "xM"))
   ("ttheCardinalityOf" "xM"))
  ("sdtlsdt" ("ttheCardinalityOf" ("sdtcflbdtrb" "xf" "xM"))
   ("ttheCardinalityOf" "xM"))))
"hypothesis."
("assume" (AND ("aSet" "xN") ("aSet" "xM")))
("assume" ("sdtlsdt" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM")))
("assume" (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtbsdt" "xM" "xN"))))
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
("assume"
 (OR ("=" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))
     ("sdtlsdt" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))))
("assume" (EXISTS (DB 0) ("aElementOf" (DB 0) "xM")))
("assume"
 (EXISTS (DB 0)
  (AND ("aFunction" (DB 0))
       (AND ("=" "xN" ("szDzozmlpdtrp" (DB 0)))
            ("=" "xM" ("sdtcflbdtrb" (DB 0) ("szDzozmlpdtrp" (DB 0))))))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("=" ("ttheCardinalityOf" "xA") "xA"))
"hypothesis."
("assume" ("aSet" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSequenceOfCardinalsOn" (DB 0) "xD"))
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xD")
             (FORALL (DB 0)
              (IMPLIES ("aElementOf" (DB 0) "xD")
               ("aCardinal" ("sdtlbdtrb" (DB 1) (DB 0))))))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IMPLIES
   (HEADTERM TAG ("=" (DB 0) ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD")))
   ("aSet" (DB 0)))))
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD"))
   (EXISTS (DB 0)
    (EXISTS (DB 0)
     (AND
      (AND ("aElementOf" (DB 0) "xD")
           ("aElementOf" (DB 1) ("sdtlbdtrb" "xkappa" (DB 0))))
      ("=" (DB 2) ("slpdtcmdtrp" (DB 1) (DB 0)))))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szSzuzmlpdtcmdtrp" "xkappa" "xD")))
   ("=" (DB 0)
    ("ttheCardinalityOf" ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD"))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IMPLIES
   (HEADTERM TAG ("=" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD")))
   ("aSet" (DB 0)))))
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD"))
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xD")
             (FORALL (DB 0)
              (IMPLIES ("aElementOf" (DB 0) "xD")
               ("aElementOf" ("sdtlbdtrb" (DB 1) (DB 0))
                ("sdtlbdtrb" "xkappa" (DB 0))))))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szPzrzozdlpdtcmdtrp" "xkappa" "xD")))
   ("=" (DB 0)
    ("ttheCardinalityOf" ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD"))))))
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xlambda" "xD"))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xD")
   (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtlbdtrb" "xlambda" (DB 1)))))))
(FORMULA
 (EXISTS (DB 0)
  ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD"))))
"proof."
(FORMULA
 (AND (AND ("aFunction" "xf") (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xf") "xD")))
      (FORALL (DB 0)
       (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        (EXISTS (DB 0)
         (AND ("aElementOf" (DB 0) ("sdtlbdtrb" "xlambda" (DB 1)))
              (EVALUATION TAG ("=" ("sdtlbdtrb" "xf" (DB 1)) (DB 0)))))))))
(FORMULA ("aElementOf" "xf" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")))
"qed."
("assume" ("aSet" "xD"))
("assume"
 (AND ("aSequenceOfCardinalsOn" "xkappa" "xD")
      ("aSequenceOfCardinalsOn" "xlambda" "xD")))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xD")
   ("sdtlsdt" ("sdtlbdtrb" "xkappa" (DB 0)) ("sdtlbdtrb" "xlambda" (DB 0))))))
(FORMULA
 ("sdtlsdt" ("szSzuzmlpdtcmdtrp" "xkappa" "xD")
  ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (OR
  ("=" ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")
   ("szSzuzmlpdtcmdtrp" "xkappa" "xD"))
  ("sdtlsdt" ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")
   ("szSzuzmlpdtcmdtrp" "xkappa" "xD"))))
(FORMULA
 (AND ("aFunction" "xG")
      (AND
       ("=" ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD") ("szDzozmlpdtrp" "xG"))
       ("=" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")
        ("sdtcflbdtrb" "xG" ("szDzozmlpdtrp" "xG"))))))
"proof."
(FORMULA
 (EXISTS (DB 0)
  ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD"))))
"qed."
(FORMULA
 (AND
  (AND ("aFunction" "xDiag") (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xDiag") "xD")))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xDiag"))
    (EXISTS (DB 0)
     (AND
      (DEFINED TAG
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA (DB 0)
               (REPLACEMENT TAG
                (EXISTS (DB 0)
                 (AND ("aElementOf" (DB 0) ("sdtlbdtrb" "xkappa" "xi"))
                      ("=" (DB 1)
                       ("sdtlbdtrb"
                        ("sdtlbdtrb" "xG" ("slpdtcmdtrp" (DB 0) "xi"))
                        "xi")))))))))
      (EVALUATION TAG ("=" ("sdtlbdtrb" "xDiag" (DB 1)) (DB 0)))))))))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xD")
   ("sdtlsdt" ("ttheCardinalityOf" ("sdtlbdtrb" "xDiag" (DB 0)))
    ("sdtlbdtrb" "xlambda" (DB 0))))))
"proof."
("assume" ("aElementOf" "xi" "xD"))
(FORMULA
 (AND
  (AND ("aFunction" "xF")
       (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xF") ("sdtlbdtrb" "xkappa" "xi"))))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xF"))
    (EVALUATION TAG
     ("=" ("sdtlbdtrb" "xF" (DB 0))
      ("sdtlbdtrb" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" (DB 0) "xi")) "xi")))))))
(FORMULA
 ("=" ("sdtcflbdtrb" "xF" ("sdtlbdtrb" "xkappa" "xi"))
  ("sdtlbdtrb" "xDiag" "xi")))
"qed."
(FORMULA
 (AND (AND ("aFunction" "xf") (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xf") "xD")))
      (FORALL (DB 0)
       (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        (EXISTS (DB 0)
         (AND
          ("aElementOf" (DB 0)
           ("sdtbsdt" ("sdtlbdtrb" "xlambda" (DB 1))
            ("sdtlbdtrb" "xDiag" (DB 1))))
          (EVALUATION TAG ("=" ("sdtlbdtrb" "xf" (DB 1)) (DB 0)))))))))
(FORMULA ("aElementOf" "xf" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")))
(FORMULA
 (AND ("aElementOf" "xj" "xD")
      (AND ("aElementOf" "xm" ("sdtlbdtrb" "xkappa" "xj"))
           ("=" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" "xm" "xj")) "xf"))))
(FORMULA
 (AND
  ("aElementOf" ("sdtlbdtrb" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" "xm" "xj")) "xj")
   ("sdtlbdtrb" "xDiag" "xj"))
  (NOT ("aElementOf" ("sdtlbdtrb" "xf" "xj") ("sdtlbdtrb" "xDiag" "xj")))))
"contradiction."
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
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtbsdt" "xM" "xN")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (AND ("aElementOf" (DB 0) "xM")
                (NOT ("aElementOf" (DB 0) "xN")))))))))
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
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aCardinal" (DB 0))) ("aSet" (DB 0)))))
"hypothesis."
("assume" (AND ("aCardinal" "xA") ("aCardinal" "xB")))
("assume" (IMPLIES (HEADTERM TAG ("sdtlsdt" "xA" "xB")) TRUTH))
"hypothesis."
("assume" (AND (AND ("aCardinal" "xA") ("aCardinal" "xB")) ("aCardinal" "xC")))
("assume"
 (IMPLIES (AND ("sdtlsdt" "xA" "xB") ("sdtlsdt" "xB" "xC"))
  ("sdtlsdt" "xA" "xC")))
"hypothesis."
("assume" (AND ("aCardinal" "xA") ("aCardinal" "xB")))
("assume" (OR (OR ("sdtlsdt" "xA" "xB") ("sdtlsdt" "xB" "xA")) ("=" "xB" "xA")))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("ttheCardinalityOf" "xM")))
   ("aCardinal" (DB 0)))))
("assume" ("aFunction" "xf"))
("assume" ("aSubsetOf" "xM" ("szDzozmlpdtrp" "xf")))
("assume"
 (OR
  ("=" ("ttheCardinalityOf" ("sdtcflbdtrb" "xf" "xM"))
   ("ttheCardinalityOf" "xM"))
  ("sdtlsdt" ("ttheCardinalityOf" ("sdtcflbdtrb" "xf" "xM"))
   ("ttheCardinalityOf" "xM"))))
"hypothesis."
("assume" (AND ("aSet" "xN") ("aSet" "xM")))
("assume" ("sdtlsdt" ("ttheCardinalityOf" "xN") ("ttheCardinalityOf" "xM")))
("assume" (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtbsdt" "xM" "xN"))))
("assume" (AND ("aSet" "xM") ("aSet" "xN")))
("assume"
 (OR ("=" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))
     ("sdtlsdt" ("ttheCardinalityOf" "xM") ("ttheCardinalityOf" "xN"))))
("assume" (EXISTS (DB 0) ("aElementOf" (DB 0) "xM")))
("assume"
 (EXISTS (DB 0)
  (AND ("aFunction" (DB 0))
       (AND ("=" "xN" ("szDzozmlpdtrp" (DB 0)))
            ("=" "xM" ("sdtcflbdtrb" (DB 0) ("szDzozmlpdtrp" (DB 0))))))))
"hypothesis."
("assume" ("aCardinal" "xA"))
("assume" ("=" ("ttheCardinalityOf" "xA") "xA"))
"hypothesis."
("assume" ("aSet" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSequenceOfCardinalsOn" (DB 0) "xD"))
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xD")
             (FORALL (DB 0)
              (IMPLIES ("aElementOf" (DB 0) "xD")
               ("aCardinal" ("sdtlbdtrb" (DB 1) (DB 0))))))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IMPLIES
   (HEADTERM TAG ("=" (DB 0) ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD")))
   ("aSet" (DB 0)))))
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD"))
   (EXISTS (DB 0)
    (EXISTS (DB 0)
     (AND
      (AND ("aElementOf" (DB 0) "xD")
           ("aElementOf" (DB 1) ("sdtlbdtrb" "xkappa" (DB 0))))
      ("=" (DB 2) ("slpdtcmdtrp" (DB 1) (DB 0)))))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szSzuzmlpdtcmdtrp" "xkappa" "xD")))
   ("=" (DB 0)
    ("ttheCardinalityOf" ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD"))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IMPLIES
   (HEADTERM TAG ("=" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD")))
   ("aSet" (DB 0)))))
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD"))
   (AND ("aFunction" (DB 0))
        (AND ("=" ("szDzozmlpdtrp" (DB 0)) "xD")
             (FORALL (DB 0)
              (IMPLIES ("aElementOf" (DB 0) "xD")
               ("aElementOf" ("sdtlbdtrb" (DB 1) (DB 0))
                ("sdtlbdtrb" "xkappa" (DB 0))))))))))
"hypothesis."
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xkappa" "xD"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szPzrzozdlpdtcmdtrp" "xkappa" "xD")))
   ("=" (DB 0)
    ("ttheCardinalityOf" ("szPzrzozdzSzeztlpdtcmdtrp" "xkappa" "xD"))))))
("assume" ("aSet" "xD"))
("assume" ("aSequenceOfCardinalsOn" "xlambda" "xD"))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xD")
   (EXISTS (DB 0) ("aElementOf" (DB 0) ("sdtlbdtrb" "xlambda" (DB 1)))))))
(FORMULA
 (EXISTS (DB 0)
  ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD"))))
"proof."
(FORMULA
 (AND (AND ("aFunction" "xf") (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xf") "xD")))
      (FORALL (DB 0)
       (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        (EXISTS (DB 0)
         (AND ("aElementOf" (DB 0) ("sdtlbdtrb" "xlambda" (DB 1)))
              (EVALUATION TAG ("=" ("sdtlbdtrb" "xf" (DB 1)) (DB 0)))))))))
(FORMULA ("aElementOf" "xf" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")))
"qed."
("assume" ("aSet" "xD"))
("assume"
 (AND ("aSequenceOfCardinalsOn" "xkappa" "xD")
      ("aSequenceOfCardinalsOn" "xlambda" "xD")))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xD")
   ("sdtlsdt" ("sdtlbdtrb" "xkappa" (DB 0)) ("sdtlbdtrb" "xlambda" (DB 0))))))
(FORMULA
 ("sdtlsdt" ("szSzuzmlpdtcmdtrp" "xkappa" "xD")
  ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (OR
  ("=" ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")
   ("szSzuzmlpdtcmdtrp" "xkappa" "xD"))
  ("sdtlsdt" ("szPzrzozdlpdtcmdtrp" "xlambda" "xD")
   ("szSzuzmlpdtcmdtrp" "xkappa" "xD"))))
(FORMULA
 (AND ("aFunction" "xG")
      (AND
       ("=" ("szSzuzmzSzeztlpdtcmdtrp" "xkappa" "xD") ("szDzozmlpdtrp" "xG"))
       ("=" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")
        ("sdtcflbdtrb" "xG" ("szDzozmlpdtrp" "xG"))))))
"proof."
(FORMULA
 (EXISTS (DB 0)
  ("aElementOf" (DB 0) ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD"))))
"qed."
(FORMULA
 (AND
  (AND ("aFunction" "xDiag") (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xDiag") "xD")))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xDiag"))
    (EXISTS (DB 0)
     (AND
      (DEFINED TAG
       (AND ("aSet" (DB 0))
            ("=" (DB 0)
             (LAMBDA (DB 0)
               (REPLACEMENT TAG
                (EXISTS (DB 0)
                 (AND ("aElementOf" (DB 0) ("sdtlbdtrb" "xkappa" "xi"))
                      ("=" (DB 1)
                       ("sdtlbdtrb"
                        ("sdtlbdtrb" "xG" ("slpdtcmdtrp" (DB 0) "xi"))
                        "xi")))))))))
      (EVALUATION TAG ("=" ("sdtlbdtrb" "xDiag" (DB 1)) (DB 0)))))))))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xD")
   ("sdtlsdt" ("ttheCardinalityOf" ("sdtlbdtrb" "xDiag" (DB 0)))
    ("sdtlbdtrb" "xlambda" (DB 0))))))
"proof."
("assume" ("aElementOf" "xi" "xD"))
(FORMULA
 (AND
  (AND ("aFunction" "xF")
       (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xF") ("sdtlbdtrb" "xkappa" "xi"))))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xF"))
    (EVALUATION TAG
     ("=" ("sdtlbdtrb" "xF" (DB 0))
      ("sdtlbdtrb" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" (DB 0) "xi")) "xi")))))))
(FORMULA
 ("=" ("sdtcflbdtrb" "xF" ("sdtlbdtrb" "xkappa" "xi"))
  ("sdtlbdtrb" "xDiag" "xi")))
"qed."
(FORMULA
 (AND (AND ("aFunction" "xf") (DOMAIN TAG ("=" ("szDzozmlpdtrp" "xf") "xD")))
      (FORALL (DB 0)
       (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
        (EXISTS (DB 0)
         (AND
          ("aElementOf" (DB 0)
           ("sdtbsdt" ("sdtlbdtrb" "xlambda" (DB 1))
            ("sdtlbdtrb" "xDiag" (DB 1))))
          (EVALUATION TAG ("=" ("sdtlbdtrb" "xf" (DB 1)) (DB 0)))))))))
(FORMULA ("aElementOf" "xf" ("szPzrzozdzSzeztlpdtcmdtrp" "xlambda" "xD")))
(FORMULA
 (AND ("aElementOf" "xj" "xD")
      (AND ("aElementOf" "xm" ("sdtlbdtrb" "xkappa" "xj"))
           ("=" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" "xm" "xj")) "xf"))))
(FORMULA
 (AND
  ("aElementOf" ("sdtlbdtrb" ("sdtlbdtrb" "xG" ("slpdtcmdtrp" "xm" "xj")) "xj")
   ("sdtlbdtrb" "xDiag" "xj"))
  (NOT ("aElementOf" ("sdtlbdtrb" "xf" "xj") ("sdtlbdtrb" "xDiag" "xj")))))
"contradiction."
"qed."
