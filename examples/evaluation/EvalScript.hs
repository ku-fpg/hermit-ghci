import HERMIT.API
script :: Shell ()
script = do
  eval "load-as-rewrite \"WWA\" \"WW-Ass-A.hss\""
  eval "flatten-module"
  eval "binding-of 'eval"
  eval "ww-result-split [| abs |] [| rep |] (ww-result-AssA-to-AssC WWA)"
  eval "{ def-rhs"
  eval "  let-subst"
  eval "  { let-body"
  eval "    alpha-lam 'e"
  eval "    lam-body"
  eval "    unfold 'abs"
  eval "  }"
  eval "  { rhs-of 'work"
  eval "    alpha-lam 'e ; lam-body"
  eval "    unfold 'rep"
  eval "    bash"
  eval "    [lam-body, lam-body]"
  eval "    { consider case ; [ case-alt 1, alt-rhs ] ; abstract 'm"
  eval "      consider case ; [ case-alt 1, alt-rhs ] ; abstract 'n"
  eval "    }"
  eval "    any-bu (fold 'rep)"
  eval "    any-td (forward ww-result-fusion)"
  eval "  }"
  eval "}"

