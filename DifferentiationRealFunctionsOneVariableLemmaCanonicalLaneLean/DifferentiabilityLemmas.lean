import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DifferentiabilityPackage where
  f : ℝ → ℝ
  a : ℝ
  differentiableAt : Prop
  sumRule : Prop
  productRule : Prop
  chainRule : Prop

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  differentiableAtClosed : D.differentiableAt
  sumRuleClosed : D.sumRule
  productRuleClosed : D.productRule
  chainRuleClosed : D.chainRule

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.differentiableAt ∧ D.sumRule ∧ D.productRule ∧ D.chainRule

theorem differentiability_closed_from_evidence (D : DifferentiabilityPackage)
    (E : DifferentiabilityEvidence D) : DifferentiabilityClosed D := by
  exact And.intro E.differentiableAtClosed
    (And.intro E.sumRuleClosed
      (And.intro E.productRuleClosed E.chainRuleClosed))

end HautevilleHouse.DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse
