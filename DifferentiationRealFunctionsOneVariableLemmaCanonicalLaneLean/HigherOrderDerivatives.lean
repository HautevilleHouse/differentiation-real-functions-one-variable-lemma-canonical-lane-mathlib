import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure HigherOrderDerivativesPackage where
  secondDerivative : Prop
  taylorExpansion : Prop
  higherOrderDifferentiability : Prop
  polynomialApproximation : Prop

structure HigherOrderDerivativesEvidence (H : HigherOrderDerivativesPackage) where
  secondDerivativeClosed : H.secondDerivative
  taylorExpansionClosed : H.taylorExpansion
  higherOrderDifferentiabilityClosed : H.higherOrderDifferentiability
  polynomialApproximationClosed : H.polynomialApproximation

def HigherOrderDerivativesClosed (H : HigherOrderDerivativesPackage) : Prop :=
  H.secondDerivative ∧ H.taylorExpansion ∧ H.higherOrderDifferentiability ∧ H.polynomialApproximation

theorem higher_order_derivatives_closed_from_evidence (H : HigherOrderDerivativesPackage)
    (E : HigherOrderDerivativesEvidence H) : HigherOrderDerivativesClosed H := by
  exact And.intro E.secondDerivativeClosed
    (And.intro E.taylorExpansionClosed
      (And.intro E.higherOrderDifferentiabilityClosed E.polynomialApproximationClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse