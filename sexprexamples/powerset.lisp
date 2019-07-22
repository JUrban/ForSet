"hypothesis."
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
   ("aSet" ("sdtlbdtrb" "xf" (DB 0))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xM"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xM")))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("tthePowersetOf" "xM")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0) (LAMBDA (DB 0) ("aSubsetOf" (DB 0) "xM")))))))
"hypothesis."
("assume" (AND ("aFunction" "xf") ("aSet" "xM")))
("assume"
 (IFF (HEADTERM TAG ("doSurjectsOnto" "xf" "xM"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xM")
    (EXISTS (DB 0)
     (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
          ("=" (DB 1) ("sdtlbdtrb" "xf" (DB 0)))))))))
"conjecture."
("assume" ("aSet" "xM"))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES (AND ("aFunction" (DB 0)) ("=" ("szDzozmlpdtrp" (DB 0)) "xM"))
   (NOT ("doSurjectsOnto" (DB 0) ("tthePowersetOf" "xM"))))))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (AND ("aFunction" "xf")
      (AND ("=" ("szDzozmlpdtrp" "xf") "xM")
           ("doSurjectsOnto" "xf" ("tthePowersetOf" "xM")))))
(FORMULA
 (AND ("aSet" "xN")
      ("=" "xN"
       (LAMBDA (DB 0)
         (AND ("aElementOf" (DB 0) "xM")
              (NOT ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" (DB 0)))))))))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xM")
   (NOT ("=" "xN" ("sdtlbdtrb" "xf" (DB 0)))))))
"contradiction."
"qed."
"hypothesis."
("assume" ("aFunction" "xf"))
("assume"
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
   ("aSet" ("sdtlbdtrb" "xf" (DB 0))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("aSubsetOf" (DB 0) "xM"))
   (AND ("aSet" (DB 0))
        (FORALL (DB 0)
         (IMPLIES ("aElementOf" (DB 0) (DB 1)) ("aElementOf" (DB 0) "xM")))))))
"hypothesis."
("assume" ("aSet" "xM"))
("assume"
 (FORALL (DB 0)
  (IFF (HEADTERM TAG ("=" (DB 0) ("tthePowersetOf" "xM")))
   (AND ("aSet" (DB 0))
        ("=" (DB 0) (LAMBDA (DB 0) ("aSubsetOf" (DB 0) "xM")))))))
"hypothesis."
("assume" (AND ("aFunction" "xf") ("aSet" "xM")))
("assume"
 (IFF (HEADTERM TAG ("doSurjectsOnto" "xf" "xM"))
  (FORALL (DB 0)
   (IMPLIES ("aElementOf" (DB 0) "xM")
    (EXISTS (DB 0)
     (AND ("aElementOf" (DB 0) ("szDzozmlpdtrp" "xf"))
          ("=" (DB 1) ("sdtlbdtrb" "xf" (DB 0)))))))))
"conjecture."
("assume" ("aSet" "xM"))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES (AND ("aFunction" (DB 0)) ("=" ("szDzozmlpdtrp" (DB 0)) "xM"))
   (NOT ("doSurjectsOnto" (DB 0) ("tthePowersetOf" "xM"))))))
"proof."
("assume" (NOT ("#TH#")))
(FORMULA
 (AND ("aFunction" "xf")
      (AND ("=" ("szDzozmlpdtrp" "xf") "xM")
           ("doSurjectsOnto" "xf" ("tthePowersetOf" "xM")))))
(FORMULA
 (AND ("aSet" "xN")
      ("=" "xN"
       (LAMBDA (DB 0)
         (AND ("aElementOf" (DB 0) "xM")
              (NOT ("aElementOf" (DB 0) ("sdtlbdtrb" "xf" (DB 0)))))))))
(FORMULA
 (FORALL (DB 0)
  (IMPLIES ("aElementOf" (DB 0) "xM")
   (NOT ("=" "xN" ("sdtlbdtrb" "xf" (DB 0)))))))
"contradiction."
"qed."
