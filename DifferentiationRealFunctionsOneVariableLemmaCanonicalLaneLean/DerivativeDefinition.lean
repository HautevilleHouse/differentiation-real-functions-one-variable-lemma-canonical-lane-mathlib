import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DerivativePackage where
  point : ℝ
  limitDefinition : Prop
  linearApproximation : Prop
  differentialQuotient : Prop
  uniquenessOfLimit : Prop

structure DerivativeEvidence (D : DerivativePackage) where
  limitDefinitionClosed : D.limitDefinition
  linearApproximationClosed : D.linearApproximation
  differentialQuotientClosed : D.differentialQuotient
  uniquenessOfLimitClosed : D.uniquenessOfLimit

def DerivativeClosed (D : DerivativePackage) : Prop :=
  D.limitDefinition ∧ D.linearApproximation ∧ D.differentialQuotient ∧ D.uniquenessOfLimit

theorem derivative_closed_from_evidence (D : DerivativePackage) (E : DerivativeEvidence D) :
    DerivativeClosed D := by
  exact And.intro E.limitDefinitionClosed
    (And.intro E.linearApproximationClosed
      (And.intro E.differentialQuotientClosed E.uniquenessOfLimitClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse