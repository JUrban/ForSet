"hypothesis."
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aRationalNumber" (DB 0))) TRUTH)))
"hypothesis."
("assume" (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xr" "xq")))
   ("aRationalNumber" (DB 0)))))
"hypothesis."
("assume" (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq")))
("assume" ("=" ("sdtasdt" "xr" "xq") ("sdtasdt" "xq" "xr")))
"hypothesis."
("assume"
 (AND (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq"))
      ("aRationalNumber" "xs")))
("assume"
 ("=" ("sdtasdt" "xr" ("sdtasdt" "xq" "xs"))
  ("sdtasdt" ("sdtasdt" "xr" "xq") "xs")))
"hypothesis."
("assume"
 (AND (AND ("aRationalNumber" "xq") ("aRationalNumber" "xs"))
      ("aRationalNumber" "xr")))
("assume"
 (IMPLIES ("=" ("sdtasdt" "xq" "xs") ("sdtasdt" "xq" "xr")) ("=" "xs" "xr")))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aNaturalNumber" (DB 0)))
   ("aRationalNumber" (DB 0)))))
"hypothesis."
("assume" (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm")))
("assume" ("aNaturalNumber" ("sdtasdt" "xn" "xm")))
"hypothesis."
("assume" (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm")))
("assume"
 (IFF (HEADTERM TAG ("sdtbrdt" "xn" "xm"))
  (EXISTS (DB 0)
   (AND ("aNaturalNumber" (DB 0)) ("=" ("sdtasdt" (DB 0) "xn") "xm")))))
"hypothesis."
("assume" (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm")))
("assume"
 (IFF (HEADTERM TAG ("misCoprime" "xn" "xm"))
  (NOT
   (EXISTS (DB 0)
    (AND ("aNaturalNumber" (DB 0))
         (AND ("sdtbrdt" (DB 0) "xn") ("sdtbrdt" (DB 0) "xm")))))))
"hypothesis."
("assume" ("aNaturalNumber" "xn"))
("assume" (IMPLIES (HEADTERM TAG ("isPrime" "xn")) TRUTH))
"hypothesis."
("assume"
 (AND
  (AND (AND ("aNaturalNumber" "xp") ("isPrime" "xp")) ("aNaturalNumber" "xn"))
  ("aNaturalNumber" "xm")))
("assume"
 (IMPLIES ("sdtbrdt" "xp" ("sdtasdt" "xn" "xm"))
  (OR ("sdtbrdt" "xp" "xn") ("sdtbrdt" "xp" "xm"))))
"hypothesis."
("assume" ("aRationalNumber" "xq"))
("assume"
 (EXISTS (DB 0)
  (EXISTS (DB 0)
   (AND (AND ("aNaturalNumber" (DB 1)) ("aNaturalNumber" (DB 0)))
        (AND ("misCoprime" (DB 1) (DB 0))
             ("=" ("sdtasdt" (DB 1) "xq") (DB 0)))))))
"conjecture."
("assume" (AND ("aNaturalNumber" "xp") ("isPrime" "xp")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aRationalNumber" (DB 0))
   (NOT ("=" "xp" ("sdtasdt" (DB 0) (DB 0)))))))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA (AND ("aRationalNumber" "xq") ("=" "xp" ("sdtasdt" "xq" "xq"))))
(FORMULA
 (AND (AND ("aNaturalNumber" "xm") ("aNaturalNumber" "xn"))
      (AND ("misCoprime" "xm" "xn") ("=" ("sdtasdt" "xm" "xq") "xn"))))
(FORMULA ("=" ("sdtasdt" "xp" ("sdtasdt" "xm" "xm")) ("sdtasdt" "xn" "xn")))
(FORMULA ("sdtbrdt" "xp" "xn"))
(FORMULA (AND ("aNaturalNumber" "xk") ("=" "xn" ("sdtasdt" "xk" "xp"))))
(FORMULA
 ("=" ("sdtasdt" "xp" ("sdtasdt" "xm" "xm"))
  ("sdtasdt" "xp" ("sdtasdt" "xk" "xn"))))
(FORMULA ("=" ("sdtasdt" "xm" "xm") ("sdtasdt" "xp" ("sdtasdt" "xk" "xk"))))
(FORMULA ("sdtbrdt" "xp" "xm"))
"contradiction."
"qed."
"hypothesis."
("assume"
 (FORALL (DB 0) (IMPLIES (HEADTERM TAG ("aRationalNumber" (DB 0))) TRUTH)))
"hypothesis."
("assume" (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq")))
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("=" (DB 0) ("sdtasdt" "xr" "xq")))
   ("aRationalNumber" (DB 0)))))
"hypothesis."
("assume" (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq")))
("assume" ("=" ("sdtasdt" "xr" "xq") ("sdtasdt" "xq" "xr")))
"hypothesis."
("assume"
 (AND (AND ("aRationalNumber" "xr") ("aRationalNumber" "xq"))
      ("aRationalNumber" "xs")))
("assume"
 ("=" ("sdtasdt" "xr" ("sdtasdt" "xq" "xs"))
  ("sdtasdt" ("sdtasdt" "xr" "xq") "xs")))
"hypothesis."
("assume"
 (AND (AND ("aRationalNumber" "xq") ("aRationalNumber" "xs"))
      ("aRationalNumber" "xr")))
("assume"
 (IMPLIES ("=" ("sdtasdt" "xq" "xs") ("sdtasdt" "xq" "xr")) ("=" "xs" "xr")))
"hypothesis."
("assume"
 (FORALL (DB 0)
  (IMPLIES (HEADTERM TAG ("aNaturalNumber" (DB 0)))
   ("aRationalNumber" (DB 0)))))
"hypothesis."
("assume" (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm")))
("assume" ("aNaturalNumber" ("sdtasdt" "xn" "xm")))
"hypothesis."
("assume" (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm")))
("assume"
 (IFF (HEADTERM TAG ("sdtbrdt" "xn" "xm"))
  (EXISTS (DB 0)
   (AND ("aNaturalNumber" (DB 0)) ("=" ("sdtasdt" (DB 0) "xn") "xm")))))
"hypothesis."
("assume" (AND ("aNaturalNumber" "xn") ("aNaturalNumber" "xm")))
("assume"
 (IFF (HEADTERM TAG ("misCoprime" "xn" "xm"))
  (NOT
   (EXISTS (DB 0)
    (AND ("aNaturalNumber" (DB 0))
         (AND ("sdtbrdt" (DB 0) "xn") ("sdtbrdt" (DB 0) "xm")))))))
"hypothesis."
("assume" ("aNaturalNumber" "xn"))
("assume" (IMPLIES (HEADTERM TAG ("isPrime" "xn")) TRUTH))
"hypothesis."
("assume"
 (AND
  (AND (AND ("aNaturalNumber" "xp") ("isPrime" "xp")) ("aNaturalNumber" "xn"))
  ("aNaturalNumber" "xm")))
("assume"
 (IMPLIES ("sdtbrdt" "xp" ("sdtasdt" "xn" "xm"))
  (OR ("sdtbrdt" "xp" "xn") ("sdtbrdt" "xp" "xm"))))
"hypothesis."
("assume" ("aRationalNumber" "xq"))
("assume"
 (EXISTS (DB 0)
  (EXISTS (DB 0)
   (AND (AND ("aNaturalNumber" (DB 1)) ("aNaturalNumber" (DB 0)))
        (AND ("misCoprime" (DB 1) (DB 0))
             ("=" ("sdtasdt" (DB 1) "xq") (DB 0)))))))
"conjecture."
("assume" (AND ("aNaturalNumber" "xp") ("isPrime" "xp")))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aRationalNumber" (DB 0))
   (NOT ("=" "xp" ("sdtasdt" (DB 0) (DB 0)))))))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA (AND ("aRationalNumber" "xq") ("=" "xp" ("sdtasdt" "xq" "xq"))))
(FORMULA
 (AND (AND ("aNaturalNumber" "xm") ("aNaturalNumber" "xn"))
      (AND ("misCoprime" "xm" "xn") ("=" ("sdtasdt" "xm" "xq") "xn"))))
(FORMULA ("=" ("sdtasdt" "xp" ("sdtasdt" "xm" "xm")) ("sdtasdt" "xn" "xn")))
(FORMULA ("sdtbrdt" "xp" "xn"))
(FORMULA (AND ("aNaturalNumber" "xk") ("=" "xn" ("sdtasdt" "xk" "xp"))))
(FORMULA
 ("=" ("sdtasdt" "xp" ("sdtasdt" "xm" "xm"))
  ("sdtasdt" "xp" ("sdtasdt" "xk" "xn"))))
(FORMULA ("=" ("sdtasdt" "xm" "xm") ("sdtasdt" "xp" ("sdtasdt" "xk" "xk"))))
(FORMULA ("sdtbrdt" "xp" "xm"))
"contradiction."
"qed."
