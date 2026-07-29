import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure MeanValueTheoremPackage where
  f : ℝ → ℝ
  a b : ℝ
  aLtB : a < b
  continuousOn : Prop
  differentiableOn : Prop
  existsC : Prop

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  continuousOnClosed : M.continuousOn
  differentiableOnClosed : M.differentiableOn
  existsCClosed : M.existsC

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.continuousOn ∧ M.differentiableOn ∧ M.existsC

theorem mean_value_theorem_closed_from_evidence (M : MeanValueTheoremPackage)
    (E : MeanValueTheoremEvidence M) : MeanValueTheoremClosed M := by
  exact And.intro E.continuousOnClosed
    (And.intro E.differentiableOnClosed E.existsCClosed)

end HautevilleHouse.DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse
