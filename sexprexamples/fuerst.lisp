("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aInteger" (DB 0))) TRUTH)))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz0"))) ("aInteger" (DB 0)))))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz1"))) ("aInteger" (DB 0)))))
("assume" ("aInteger" "xa"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("smndt" "xa"))) ("aInteger" (DB 0)))))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtpldt" "xa" "xb")))
   ("aInteger" (DB 0)))))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xa" "xb")))
   ("aInteger" (DB 0)))))
("assume" (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc")))
("assume"
 ("=" ("sdtpldt" "xa" ("sdtpldt" "xb" "xc"))
  ("sdtpldt" ("sdtpldt" "xa" "xb") "xc")))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume" ("=" ("sdtpldt" "xa" "xb") ("sdtpldt" "xb" "xa")))
("assume" ("aInteger" "xa"))
("assume"
 (AND ("=" ("sdtpldt" "xa" ("sz0")) "xa") ("=" "xa" ("sdtpldt" ("sz0") "xa"))))
("assume" ("aInteger" "xa"))
("assume"
 (AND ("=" ("sdtpldt" "xa" ("smndt" "xa")) ("sz0"))
      ("=" ("sz0") ("sdtpldt" ("smndt" "xa") "xa"))))
("assume" (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc")))
("assume"
 ("=" ("sdtasdt" "xa" ("sdtasdt" "xb" "xc"))
  ("sdtasdt" ("sdtasdt" "xa" "xb") "xc")))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume" ("=" ("sdtasdt" "xa" "xb") ("sdtasdt" "xb" "xa")))
("assume" ("aInteger" "xa"))
("assume"
 (AND ("=" ("sdtasdt" "xa" ("sz1")) "xa") ("=" "xa" ("sdtasdt" ("sz1") "xa"))))
("assume" (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc")))
("assume"
 (AND
  ("=" ("sdtasdt" "xa" ("sdtpldt" "xb" "xc"))
   ("sdtpldt" ("sdtasdt" "xa" "xb") ("sdtasdt" "xa" "xc")))
  ("=" ("sdtasdt" ("sdtpldt" "xa" "xb") "xc")
   ("sdtpldt" ("sdtasdt" "xa" "xc") ("sdtasdt" "xb" "xc")))))
("assume" ("aInteger" "xa"))
(FORMULA
 (AND ("=" ("sdtasdt" "xa" ("sz0")) ("sz0"))
      ("=" ("sz0") ("sdtasdt" ("sz0") "xa"))))
("assume" ("aInteger" "xa"))
(FORMULA
 (AND ("=" ("sdtasdt" ("smndt" ("sz1")) "xa") ("smndt" "xa"))
      ("=" ("smndt" "xa") ("sdtasdt" "xa" ("smndt" ("sz1"))))))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume"
 (IMPLIES (AND (NOT ("=" "xa" ("sz0"))) (NOT ("=" "xb" ("sz0"))))
  (NOT ("=" ("sdtasdt" "xa" "xb") ("sz0")))))
("assume" ("aInteger" "xb"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aDivisorOf" (DB 0) "xb"))
   (AND ("aInteger" (DB 0))
        (AND (NOT ("=" (DB 0) ("sz0")))
             (EXISTS (DB 0)
              (AND ("aInteger" (DB 0))
                   ("=" ("sdtasdt" (DB 1) (DB 0)) "xb"))))))))
("assume"
 (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
      (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
("assume"
 (IFF (HEADTERM TAG ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))
  ("aDivisorOf" "xq" ("sdtpldt" "xa" ("smndt" "xb")))))
("assume"
 (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA ("sdteqdtlpzmzozddtrp" "xa" "xa" "xq"))
("assume"
 (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
      (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA
 (IMPLIES ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
  ("sdteqdtlpzmzozddtrp" "xb" "xa" "xq")))
"proof."
("assume" ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))
(FORMULA
 (AND ("aInteger" "xn")
      ("=" ("sdtasdt" "xq" "xn") ("sdtpldt" "xa" ("smndt" "xb")))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xq" ("smndt" "xn"))
   ("sdtasdt" ("smndt" ("sz1")) ("sdtpldt" "xa" ("smndt" "xb"))))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xq" ("smndt" "xn"))
   ("sdtasdt" ("smndt" ("sz1")) ("sdtasdt" "xq" "xn")))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("smndt" ("sz1")) ("sdtasdt" "xq" "xn"))
   ("sdtasdt" ("smndt" ("sz1")) ("sdtpldt" "xa" ("smndt" "xb"))))))
"qed."
"qed."
("assume"
 (AND
  (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
       (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
  ("aInteger" "xc")))
(FORMULA
 (IMPLIES
  (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
       ("sdteqdtlpzmzozddtrp" "xb" "xc" "xq"))
  ("sdteqdtlpzmzozddtrp" "xa" "xc" "xq")))
"proof."
("assume"
 (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
      ("sdteqdtlpzmzozddtrp" "xb" "xc" "xq")))
(FORMULA
 (AND ("aInteger" "xn")
      ("=" ("sdtasdt" "xq" "xn") ("sdtpldt" "xa" ("smndt" "xb")))))
(FORMULA
 (AND ("aInteger" "xm")
      ("=" ("sdtasdt" "xq" "xm") ("sdtpldt" "xb" ("smndt" "xc")))))
(FORMULA
 ("=" ("sdtasdt" "xq" ("sdtpldt" "xn" "xm")) ("sdtpldt" "xa" ("smndt" "xc"))))
"qed."
("assume"
 (AND
  (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
       (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0")))))
  (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA
 (IMPLIES ("sdteqdtlpzmzozddtrp" "xa" "xb" ("sdtasdt" "xp" "xq"))
  (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xp")
       ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))))
"proof."
("assume" ("sdteqdtlpzmzozddtrp" "xa" "xb" ("sdtasdt" "xp" "xq")))
(FORMULA
 (AND ("aInteger" "xm")
      ("=" ("sdtasdt" ("sdtasdt" "xp" "xq") "xm")
       ("sdtpldt" "xa" ("smndt" "xb")))))
(FORMULA
 (AND
  ("=" ("sdtasdt" "xp" ("sdtasdt" "xq" "xm")) ("sdtpldt" "xa" ("smndt" "xb")))
  ("=" ("sdtpldt" "xa" ("smndt" "xb")) ("sdtasdt" "xq" ("sdtasdt" "xp" "xm")))))
"qed."
("assume" ("aInteger" "xa"))
("assume" (IMPLIES (HEADTERM TAG ("isPrime" "xa")) TRUTH))
("assume" ("aInteger" "xn"))
("assume"
 (IFF (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
  (AND (NOT ("=" "xn" ("sz1"))) (NOT ("=" "xn" ("smndt" ("sz1")))))))
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xS"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xS")))))))
("assume" ("aSet" "xS"))
("assume" (IMPLIES (HEADTERM TAG ("isFinite" "xS")) TRUTH))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szIzNzT")))
   (AND ("aSet" (DB 0)) ("=" (DB 0) (LAMBDA (DB 0) ("aInteger" (DB 0))))))))
("assume" (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT"))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtbsmnsldt" "xA" "xB")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 (OR ("aElementOf" (DB 0) "xA")
                     ("aElementOf" (DB 0) "xB"))))))))))
("assume" (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT"))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtslmnbsdt" "xA" "xB")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 (AND ("aElementOf" (DB 0) "xA")
                      ("aElementOf" (DB 0) "xB"))))))))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aFamilyOfIntegerSets" (DB 0)))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1))
          ("aSubsetOf" (DB 0) ("szIzNzT"))))))))
("assume" ("aFamilyOfIntegerSets" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sbsmnsldt" "xS")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 (EXISTS (DB 0)
                  (AND ("aElementOf" (DB 0) "xS")
                       ("aElementOf" (DB 1) (DB 0))))))))))))
"conjecture."
("assume" ("aFamilyOfIntegerSets" "xS"))
(FORMULA ("aSubsetOf" ("sbsmnsldt" "xS") ("szIzNzT")))
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("stldt" "xA")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0)) (NOT ("aElementOf" (DB 0) "xA"))))))))))
"conjecture."
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
(FORMULA ("aSubsetOf" ("stldt" "xA") ("szIzNzT")))
("assume"
 (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 ("sdteqdtlpzmzozddtrp" (DB 0) "xa" "xq")))))))))
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
("assume"
 (IFF (HEADTERM TAG ("isOpen" "xA"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xA")
    (EXISTS (DB 0)
     (AND (AND ("aInteger" (DB 0)) (NOT ("=" (DB 0) ("sz0"))))
          ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" (DB 1) (DB 0)) "xA")))))))
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
("assume" (IFF (HEADTERM TAG ("isClosed" "xA")) ("isOpen" ("stldt" "xA"))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aOpenFamily" (DB 0)))
   (AND ("aFamilyOfIntegerSets" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("isOpen" (DB 0))))))))
("assume" ("aOpenFamily" "xS"))
(FORMULA ("isOpen" ("sbsmnsldt" "xS")))
"proof."
("assume" ("aElementOf" "xx" ("sbsmnsldt" "xS")))
(FORMULA
 (AND ("aSet" "xM") (AND ("aElementOf" "xM" "xS") ("aElementOf" "xx" "xM"))))
(FORMULA
 (AND (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") "xM")))
(FORMULA ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") ("sbsmnsldt" "xS")))
"qed."
("assume"
 (AND (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
      (AND ("isOpen" "xA") ("isOpen" "xB"))))
(FORMULA
 (AND ("aSubsetOf" ("sdtslmnbsdt" "xA" "xB") ("szIzNzT"))
      ("isOpen" ("sdtslmnbsdt" "xA" "xB"))))
"proof."
(FORMULA ("aSubsetOf" ("sdtslmnbsdt" "xA" "xB") ("szIzNzT")))
("assume" ("aElementOf" "xx" ("sdtslmnbsdt" "xA" "xB")))
(FORMULA ("aInteger" "xx"))
(FORMULA
 (AND (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") "xA")))
(FORMULA
 (AND (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xp") "xB")))
(FORMULA
 (AND
  (AND ("aInteger" ("sdtasdt" "xp" "xq"))
       (NOT ("=" ("sdtasdt" "xp" "xq") ("sz0"))))
  ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" ("sdtasdt" "xp" "xq"))
   ("sdtslmnbsdt" "xA" "xB"))))
"proof."
(FORMULA
 (AND ("aInteger" ("sdtasdt" "xp" "xq"))
      (NOT ("=" ("sdtasdt" "xp" "xq") ("sz0")))))
("assume"
 ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" ("sdtasdt" "xp" "xq"))))
(FORMULA
 (AND ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" "xp"))
      ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq"))))
"proof."
(FORMULA
 (AND ("aInteger" "xx")
      ("sdteqdtlpzmzozddtrp" "xa" "xx" ("sdtasdt" "xp" "xq"))))
(FORMULA
 (AND ("sdteqdtlpzmzozddtrp" "xa" "xx" "xp")
      ("sdteqdtlpzmzozddtrp" "xa" "xx" "xq")))
"qed."
(FORMULA (AND ("aElementOf" "xa" "xA") ("aElementOf" "xa" "xB")))
(FORMULA ("aElementOf" "xa" ("sdtslmnbsdt" "xA" "xB")))
"qed."
"qed."
("assume"
 (AND (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
      (AND ("isClosed" "xA") ("isClosed" "xB"))))
(FORMULA ("isClosed" ("sdtbsmnsldt" "xA" "xB")))
"proof."
(FORMULA
 (AND ("aSubsetOf" ("stldt" "xA") ("szIzNzT"))
      ("aSubsetOf" ("stldt" "xB") ("szIzNzT"))))
(FORMULA
 ("=" ("stldt" ("sdtbsmnsldt" "xA" "xB"))
  ("sdtslmnbsdt" ("stldt" "xA") ("stldt" "xB"))))
"qed."
("assume"
 (AND ("aFamilyOfIntegerSets" "xS")
      (AND ("isFinite" "xS")
           (FORALL (DB 0)
            (IMPLIES ("aElementOf" (DB 0) "xS")
             (AND ("aSubsetOf" (DB 0) ("szIzNzT")) ("isClosed" (DB 0))))))))
("assume" ("isClosed" ("sbsmnsldt" "xS")))
("assume"
 (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA
 (AND ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq") ("szIzNzT"))
      ("isClosed" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
"proof."
(FORMULA ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq") ("szIzNzT")))
("assume" ("aElementOf" "xb" ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
(FORMULA
 ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xb" "xq")
  ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
"proof."
("assume" ("aElementOf" "xc" ("szAzrzSzezqlpdtcmdtrp" "xb" "xq")))
("assume"
 (NOT ("aElementOf" "xc" ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))))
(FORMULA
 (AND ("sdteqdtlpzmzozddtrp" "xc" "xb" "xq")
      ("sdteqdtlpzmzozddtrp" "xa" "xc" "xq")))
(FORMULA ("sdteqdtlpzmzozddtrp" "xb" "xa" "xq"))
(FORMULA ("aElementOf" "xb" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
"contradiction."
"qed."
"qed."
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) "xS")
   (EXISTS (DB 0)
    (AND
     (AND ("aInteger" (DB 0))
          (AND (NOT ("=" (DB 0) ("sz0"))) ("isPrime" (DB 0))))
     ("=" (DB 1) ("szAzrzSzezqlpdtcmdtrp" ("sz0") (DB 0))))))))
(FORMULA (NOT ("isFinite" "xS")))
"proof."
(FORMULA ("aFamilyOfIntegerSets" "xS"))
(FORMULA
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) ("stldt" ("sbsmnsldt" "xS")))
   (OR ("=" (DB 0) ("sz1")) ("=" (DB 0) ("smndt" ("sz1")))))))
"proof."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aInteger" (DB 0))
   (IFF ("aElementOf" (DB 0) ("sbsmnsldt" "xS"))
    (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) (DB 1)) ("isPrime" (DB 0))))))))
"proof."
("assume" ("aInteger" "xn"))
(FORMULA
 (IMPLIES (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
  ("aElementOf" "xn" ("sbsmnsldt" "xS"))))
"proof."
("assume" (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0)))))
(FORMULA (AND ("aDivisorOf" "xp" "xn") ("isPrime" "xp")))
(FORMULA ("aElementOf" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xp") "xS"))
(FORMULA ("aElementOf" "xn" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xp")))
"qed."
(FORMULA
 (IMPLIES ("aElementOf" "xn" ("sbsmnsldt" "xS"))
  (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))))
"proof."
("assume" ("aElementOf" "xn" ("sbsmnsldt" "xS")))
(FORMULA
 (AND (AND ("aInteger" "xr") (AND (NOT ("=" "xr" ("sz0"))) ("isPrime" "xr")))
      ("aElementOf" "xn" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xr"))))
(FORMULA (AND ("aDivisorOf" "xr" "xn") ("isPrime" "xr")))
"qed."
"qed."
"qed."
("assume" ("isFinite" "xS"))
(FORMULA
 (AND ("isClosed" ("sbsmnsldt" "xS")) ("isOpen" ("stldt" ("sbsmnsldt" "xS")))))
(FORMULA
 (AND (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp")
       ("stldt" ("sbsmnsldt" "xS")))))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))
       (AND (NOT ("=" (DB 0) ("sz1"))) (NOT ("=" (DB 0) ("smndt" ("sz1"))))))))
"proof."
(FORMULA
 (AND
  ("aElementOf" ("sdtpldt" ("sz1") "xp")
   ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))
  ("aElementOf" ("sdtpldt" ("sz1") ("smndt" "xp"))
   ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))))
(FORMULA
 (AND (NOT ("=" ("sdtpldt" ("sz1") "xp") ("sz1")))
      (NOT ("=" ("sdtpldt" ("sz1") ("smndt" "xp")) ("sz1")))))
(FORMULA
 (OR (NOT ("=" ("sdtpldt" ("sz1") "xp") ("smndt" ("sz1"))))
     (NOT ("=" ("sdtpldt" ("sz1") ("smndt" "xp")) ("smndt" ("sz1"))))))
"qed."
"contradiction."
"qed."
("assume" (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aInteger" (DB 0))) TRUTH)))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz0"))) ("aInteger" (DB 0)))))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sz1"))) ("aInteger" (DB 0)))))
("assume" ("aInteger" "xa"))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("smndt" "xa"))) ("aInteger" (DB 0)))))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtpldt" "xa" "xb")))
   ("aInteger" (DB 0)))))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xa" "xb")))
   ("aInteger" (DB 0)))))
("assume" (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc")))
("assume"
 ("=" ("sdtpldt" "xa" ("sdtpldt" "xb" "xc"))
  ("sdtpldt" ("sdtpldt" "xa" "xb") "xc")))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume" ("=" ("sdtpldt" "xa" "xb") ("sdtpldt" "xb" "xa")))
("assume" ("aInteger" "xa"))
("assume"
 (AND ("=" ("sdtpldt" "xa" ("sz0")) "xa") ("=" "xa" ("sdtpldt" ("sz0") "xa"))))
("assume" ("aInteger" "xa"))
("assume"
 (AND ("=" ("sdtpldt" "xa" ("smndt" "xa")) ("sz0"))
      ("=" ("sz0") ("sdtpldt" ("smndt" "xa") "xa"))))
("assume" (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc")))
("assume"
 ("=" ("sdtasdt" "xa" ("sdtasdt" "xb" "xc"))
  ("sdtasdt" ("sdtasdt" "xa" "xb") "xc")))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume" ("=" ("sdtasdt" "xa" "xb") ("sdtasdt" "xb" "xa")))
("assume" ("aInteger" "xa"))
("assume"
 (AND ("=" ("sdtasdt" "xa" ("sz1")) "xa") ("=" "xa" ("sdtasdt" ("sz1") "xa"))))
("assume" (AND (AND ("aInteger" "xa") ("aInteger" "xb")) ("aInteger" "xc")))
("assume"
 (AND
  ("=" ("sdtasdt" "xa" ("sdtpldt" "xb" "xc"))
   ("sdtpldt" ("sdtasdt" "xa" "xb") ("sdtasdt" "xa" "xc")))
  ("=" ("sdtasdt" ("sdtpldt" "xa" "xb") "xc")
   ("sdtpldt" ("sdtasdt" "xa" "xc") ("sdtasdt" "xb" "xc")))))
("assume" ("aInteger" "xa"))
(FORMULA
 (AND ("=" ("sdtasdt" "xa" ("sz0")) ("sz0"))
      ("=" ("sz0") ("sdtasdt" ("sz0") "xa"))))
("assume" ("aInteger" "xa"))
(FORMULA
 (AND ("=" ("sdtasdt" ("smndt" ("sz1")) "xa") ("smndt" "xa"))
      ("=" ("smndt" "xa") ("sdtasdt" "xa" ("smndt" ("sz1"))))))
("assume" (AND ("aInteger" "xa") ("aInteger" "xb")))
("assume"
 (IMPLIES (AND (NOT ("=" "xa" ("sz0"))) (NOT ("=" "xb" ("sz0"))))
  (NOT ("=" ("sdtasdt" "xa" "xb") ("sz0")))))
("assume" ("aInteger" "xb"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aDivisorOf" (DB 0) "xb"))
   (AND ("aInteger" (DB 0))
        (AND (NOT ("=" (DB 0) ("sz0")))
             (EXISTS (DB 0)
              (AND ("aInteger" (DB 0))
                   ("=" ("sdtasdt" (DB 1) (DB 0)) "xb"))))))))
("assume"
 (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
      (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
("assume"
 (IFF (HEADTERM TAG ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))
  ("aDivisorOf" "xq" ("sdtpldt" "xa" ("smndt" "xb")))))
("assume"
 (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA ("sdteqdtlpzmzozddtrp" "xa" "xa" "xq"))
("assume"
 (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
      (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA
 (IMPLIES ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
  ("sdteqdtlpzmzozddtrp" "xb" "xa" "xq")))
"proof."
("assume" ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))
(FORMULA
 (AND ("aInteger" "xn")
      ("=" ("sdtasdt" "xq" "xn") ("sdtpldt" "xa" ("smndt" "xb")))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xq" ("smndt" "xn"))
   ("sdtasdt" ("smndt" ("sz1")) ("sdtpldt" "xa" ("smndt" "xb"))))))
"proof."
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" "xq" ("smndt" "xn"))
   ("sdtasdt" ("smndt" ("sz1")) ("sdtasdt" "xq" "xn")))))
(FORMULA
 (EQUALITYCHAIN TAG
  ("=" ("sdtasdt" ("smndt" ("sz1")) ("sdtasdt" "xq" "xn"))
   ("sdtasdt" ("smndt" ("sz1")) ("sdtpldt" "xa" ("smndt" "xb"))))))
"qed."
"qed."
("assume"
 (AND
  (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
       (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0")))))
  ("aInteger" "xc")))
(FORMULA
 (IMPLIES
  (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
       ("sdteqdtlpzmzozddtrp" "xb" "xc" "xq"))
  ("sdteqdtlpzmzozddtrp" "xa" "xc" "xq")))
"proof."
("assume"
 (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq")
      ("sdteqdtlpzmzozddtrp" "xb" "xc" "xq")))
(FORMULA
 (AND ("aInteger" "xn")
      ("=" ("sdtasdt" "xq" "xn") ("sdtpldt" "xa" ("smndt" "xb")))))
(FORMULA
 (AND ("aInteger" "xm")
      ("=" ("sdtasdt" "xq" "xm") ("sdtpldt" "xb" ("smndt" "xc")))))
(FORMULA
 ("=" ("sdtasdt" "xq" ("sdtpldt" "xn" "xm")) ("sdtpldt" "xa" ("smndt" "xc"))))
"qed."
("assume"
 (AND
  (AND (AND ("aInteger" "xa") ("aInteger" "xb"))
       (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0")))))
  (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA
 (IMPLIES ("sdteqdtlpzmzozddtrp" "xa" "xb" ("sdtasdt" "xp" "xq"))
  (AND ("sdteqdtlpzmzozddtrp" "xa" "xb" "xp")
       ("sdteqdtlpzmzozddtrp" "xa" "xb" "xq"))))
"proof."
("assume" ("sdteqdtlpzmzozddtrp" "xa" "xb" ("sdtasdt" "xp" "xq")))
(FORMULA
 (AND ("aInteger" "xm")
      ("=" ("sdtasdt" ("sdtasdt" "xp" "xq") "xm")
       ("sdtpldt" "xa" ("smndt" "xb")))))
(FORMULA
 (AND
  ("=" ("sdtasdt" "xp" ("sdtasdt" "xq" "xm")) ("sdtpldt" "xa" ("smndt" "xb")))
  ("=" ("sdtpldt" "xa" ("smndt" "xb")) ("sdtasdt" "xq" ("sdtasdt" "xp" "xm")))))
"qed."
("assume" ("aInteger" "xa"))
("assume" (IMPLIES (HEADTERM TAG ("isPrime" "xa")) TRUTH))
("assume" ("aInteger" "xn"))
("assume"
 (IFF (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
  (AND (NOT ("=" "xn" ("sz1"))) (NOT ("=" "xn" ("smndt" ("sz1")))))))
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xS"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xS")))))))
("assume" ("aSet" "xS"))
("assume" (IMPLIES (HEADTERM TAG ("isFinite" "xS")) TRUTH))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szIzNzT")))
   (AND ("aSet" (DB 0)) ("=" (DB 0) (LAMBDA (DB 0) ("aInteger" (DB 0))))))))
("assume" (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT"))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtbsmnsldt" "xA" "xB")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 (OR ("aElementOf" (DB 0) "xA")
                     ("aElementOf" (DB 0) "xB"))))))))))
("assume" (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT"))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sdtslmnbsdt" "xA" "xB")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 (AND ("aElementOf" (DB 0) "xA")
                      ("aElementOf" (DB 0) "xB"))))))))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aFamilyOfIntegerSets" (DB 0)))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1))
          ("aSubsetOf" (DB 0) ("szIzNzT"))))))))
("assume" ("aFamilyOfIntegerSets" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("sbsmnsldt" "xS")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 (EXISTS (DB 0)
                  (AND ("aElementOf" (DB 0) "xS")
                       ("aElementOf" (DB 1) (DB 0))))))))))))
"conjecture."
("assume" ("aFamilyOfIntegerSets" "xS"))
(FORMULA ("aSubsetOf" ("sbsmnsldt" "xS") ("szIzNzT")))
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("stldt" "xA")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0)) (NOT ("aElementOf" (DB 0) "xA"))))))))))
"conjecture."
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
(FORMULA ("aSubsetOf" ("stldt" "xA") ("szIzNzT")))
("assume"
 (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0)
         (LAMBDA (DB 0)
           (REPLACEMENT TAG
            (AND ("aInteger" (DB 0))
                 ("sdteqdtlpzmzozddtrp" (DB 0) "xa" "xq")))))))))
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
("assume"
 (IFF (HEADTERM TAG ("isOpen" "xA"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xA")
    (EXISTS (DB 0)
     (AND (AND ("aInteger" (DB 0)) (NOT ("=" (DB 0) ("sz0"))))
          ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" (DB 1) (DB 0)) "xA")))))))
("assume" ("aSubsetOf" "xA" ("szIzNzT")))
("assume" (IFF (HEADTERM TAG ("isClosed" "xA")) ("isOpen" ("stldt" "xA"))))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aOpenFamily" (DB 0)))
   (AND ("aFamilyOfIntegerSets" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("isOpen" (DB 0))))))))
("assume" ("aOpenFamily" "xS"))
(FORMULA ("isOpen" ("sbsmnsldt" "xS")))
"proof."
("assume" ("aElementOf" "xx" ("sbsmnsldt" "xS")))
(FORMULA
 (AND ("aSet" "xM") (AND ("aElementOf" "xM" "xS") ("aElementOf" "xx" "xM"))))
(FORMULA
 (AND (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") "xM")))
(FORMULA ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") ("sbsmnsldt" "xS")))
"qed."
("assume"
 (AND (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
      (AND ("isOpen" "xA") ("isOpen" "xB"))))
(FORMULA
 (AND ("aSubsetOf" ("sdtslmnbsdt" "xA" "xB") ("szIzNzT"))
      ("isOpen" ("sdtslmnbsdt" "xA" "xB"))))
"proof."
(FORMULA ("aSubsetOf" ("sdtslmnbsdt" "xA" "xB") ("szIzNzT")))
("assume" ("aElementOf" "xx" ("sdtslmnbsdt" "xA" "xB")))
(FORMULA ("aInteger" "xx"))
(FORMULA
 (AND (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq") "xA")))
(FORMULA
 (AND (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" "xp") "xB")))
(FORMULA
 (AND
  (AND ("aInteger" ("sdtasdt" "xp" "xq"))
       (NOT ("=" ("sdtasdt" "xp" "xq") ("sz0"))))
  ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xx" ("sdtasdt" "xp" "xq"))
   ("sdtslmnbsdt" "xA" "xB"))))
"proof."
(FORMULA
 (AND ("aInteger" ("sdtasdt" "xp" "xq"))
      (NOT ("=" ("sdtasdt" "xp" "xq") ("sz0")))))
("assume"
 ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" ("sdtasdt" "xp" "xq"))))
(FORMULA
 (AND ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" "xp"))
      ("aElementOf" "xa" ("szAzrzSzezqlpdtcmdtrp" "xx" "xq"))))
"proof."
(FORMULA
 (AND ("aInteger" "xx")
      ("sdteqdtlpzmzozddtrp" "xa" "xx" ("sdtasdt" "xp" "xq"))))
(FORMULA
 (AND ("sdteqdtlpzmzozddtrp" "xa" "xx" "xp")
      ("sdteqdtlpzmzozddtrp" "xa" "xx" "xq")))
"qed."
(FORMULA (AND ("aElementOf" "xa" "xA") ("aElementOf" "xa" "xB")))
(FORMULA ("aElementOf" "xa" ("sdtslmnbsdt" "xA" "xB")))
"qed."
"qed."
("assume"
 (AND (AND ("aSubsetOf" "xA" ("szIzNzT")) ("aSubsetOf" "xB" ("szIzNzT")))
      (AND ("isClosed" "xA") ("isClosed" "xB"))))
(FORMULA ("isClosed" ("sdtbsmnsldt" "xA" "xB")))
"proof."
(FORMULA
 (AND ("aSubsetOf" ("stldt" "xA") ("szIzNzT"))
      ("aSubsetOf" ("stldt" "xB") ("szIzNzT"))))
(FORMULA
 ("=" ("stldt" ("sdtbsmnsldt" "xA" "xB"))
  ("sdtslmnbsdt" ("stldt" "xA") ("stldt" "xB"))))
"qed."
("assume"
 (AND ("aFamilyOfIntegerSets" "xS")
      (AND ("isFinite" "xS")
           (FORALL (DB 0)
            (IMPLIES ("aElementOf" (DB 0) "xS")
             (AND ("aSubsetOf" (DB 0) ("szIzNzT")) ("isClosed" (DB 0))))))))
("assume" ("isClosed" ("sbsmnsldt" "xS")))
("assume"
 (AND ("aInteger" "xa") (AND ("aInteger" "xq") (NOT ("=" "xq" ("sz0"))))))
(FORMULA
 (AND ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq") ("szIzNzT"))
      ("isClosed" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
"proof."
(FORMULA ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq") ("szIzNzT")))
("assume" ("aElementOf" "xb" ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
(FORMULA
 ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" "xb" "xq")
  ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq"))))
"proof."
("assume" ("aElementOf" "xc" ("szAzrzSzezqlpdtcmdtrp" "xb" "xq")))
("assume"
 (NOT ("aElementOf" "xc" ("stldt" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))))
(FORMULA
 (AND ("sdteqdtlpzmzozddtrp" "xc" "xb" "xq")
      ("sdteqdtlpzmzozddtrp" "xa" "xc" "xq")))
(FORMULA ("sdteqdtlpzmzozddtrp" "xb" "xa" "xq"))
(FORMULA ("aElementOf" "xb" ("szAzrzSzezqlpdtcmdtrp" "xa" "xq")))
"contradiction."
"qed."
"qed."
("assume" ("aSet" "xS"))
("assume"
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) "xS")
   (EXISTS (DB 0)
    (AND
     (AND ("aInteger" (DB 0))
          (AND (NOT ("=" (DB 0) ("sz0"))) ("isPrime" (DB 0))))
     ("=" (DB 1) ("szAzrzSzezqlpdtcmdtrp" ("sz0") (DB 0))))))))
(FORMULA (NOT ("isFinite" "xS")))
"proof."
(FORMULA ("aFamilyOfIntegerSets" "xS"))
(FORMULA
 (FORALL (DB 0)
  (IFF ("aElementOf" (DB 0) ("stldt" ("sbsmnsldt" "xS")))
   (OR ("=" (DB 0) ("sz1")) ("=" (DB 0) ("smndt" ("sz1")))))))
"proof."
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aInteger" (DB 0))
   (IFF ("aElementOf" (DB 0) ("sbsmnsldt" "xS"))
    (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) (DB 1)) ("isPrime" (DB 0))))))))
"proof."
("assume" ("aInteger" "xn"))
(FORMULA
 (IMPLIES (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))
  ("aElementOf" "xn" ("sbsmnsldt" "xS"))))
"proof."
("assume" (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0)))))
(FORMULA (AND ("aDivisorOf" "xp" "xn") ("isPrime" "xp")))
(FORMULA ("aElementOf" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xp") "xS"))
(FORMULA ("aElementOf" "xn" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xp")))
"qed."
(FORMULA
 (IMPLIES ("aElementOf" "xn" ("sbsmnsldt" "xS"))
  (EXISTS (DB 0) (AND ("aDivisorOf" (DB 0) "xn") ("isPrime" (DB 0))))))
"proof."
("assume" ("aElementOf" "xn" ("sbsmnsldt" "xS")))
(FORMULA
 (AND (AND ("aInteger" "xr") (AND (NOT ("=" "xr" ("sz0"))) ("isPrime" "xr")))
      ("aElementOf" "xn" ("szAzrzSzezqlpdtcmdtrp" ("sz0") "xr"))))
(FORMULA (AND ("aDivisorOf" "xr" "xn") ("isPrime" "xr")))
"qed."
"qed."
"qed."
("assume" ("isFinite" "xS"))
(FORMULA
 (AND ("isClosed" ("sbsmnsldt" "xS")) ("isOpen" ("stldt" ("sbsmnsldt" "xS")))))
(FORMULA
 (AND (AND ("aInteger" "xp") (NOT ("=" "xp" ("sz0"))))
      ("aSubsetOf" ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp")
       ("stldt" ("sbsmnsldt" "xS")))))
(FORMULA
 (EXISTS (DB 0)
  (AND ("aElementOf" (DB 0) ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))
       (AND (NOT ("=" (DB 0) ("sz1"))) (NOT ("=" (DB 0) ("smndt" ("sz1"))))))))
"proof."
(FORMULA
 (AND
  ("aElementOf" ("sdtpldt" ("sz1") "xp")
   ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))
  ("aElementOf" ("sdtpldt" ("sz1") ("smndt" "xp"))
   ("szAzrzSzezqlpdtcmdtrp" ("sz1") "xp"))))
(FORMULA
 (AND (NOT ("=" ("sdtpldt" ("sz1") "xp") ("sz1")))
      (NOT ("=" ("sdtpldt" ("sz1") ("smndt" "xp")) ("sz1")))))
(FORMULA
 (OR (NOT ("=" ("sdtpldt" ("sz1") "xp") ("smndt" ("sz1"))))
     (NOT ("=" ("sdtpldt" ("sz1") ("smndt" "xp")) ("smndt" ("sz1"))))))
"qed."
"contradiction."
"qed."
