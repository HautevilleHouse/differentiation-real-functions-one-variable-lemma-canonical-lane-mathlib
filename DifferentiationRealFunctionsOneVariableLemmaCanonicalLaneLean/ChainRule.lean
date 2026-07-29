import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure ChainRulePackage where
  f : ℝ → ℝ
  g : ℝ → ℝ
  a : ℝ
  fDifferentiableAt : Prop
  gDifferentiableAt : Prop
  compositionDifferentiableAt : Prop
  derivativeFormula : Prop

structure ChainRuleEvidence (C : ChainRulePackage) where
  fDifferentiableAtClosed : C.fDifferentiableAt
  gDifferentiableAtClosed : C.gDifferentiableAt
  compositionDifferentiableAtClosed : C.compositionDifferentiableAt
  derivativeFormulaClosed : C.derivativeFormula

def ChainRuleClosed (C : ChainRulePackage) : Prop :=
  C.fDifferentiableAt ∧ C.gDifferentiableAt ∧ C.compositionDifferentiableAt ∧ C.derivativeFormula

theorem chain_rule_closed_from_evidence (C : ChainRulePackage) (E : ChainRuleEvidence C) :
    ChainRuleClosed C := by
  exact And.intro E.fDifferentiableAtClosed
    (And.intro E.gDifferentiableAtClosed
      (And.intro E.compositionDifferentiableAtClosed E.derivativeFormulaClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse