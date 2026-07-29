import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DerivativePropertiesPackage where
  f : ℝ → ℝ
  a : ℝ
  derivativeValue : ℝ
  linearApproximation : Prop
  localLinearity : Prop
  derivativeUniqueness : Prop

structure DerivativePropertiesEvidence (D : DerivativePropertiesPackage) where
  linearApproximationClosed : D.linearApproximation
  localLinearityClosed : D.localLinearity
  derivativeUniquenessClosed : D.derivativeUniqueness

def DerivativePropertiesClosed (D : DerivativePropertiesPackage) : Prop :=
  D.linearApproximation ∧ D.localLinearity ∧ D.derivativeUniqueness

theorem derivative_properties_closed_from_evidence (D : DerivativePropertiesPackage)
    (E : DerivativePropertiesEvidence D) : DerivativePropertiesClosed D := by
  exact And.intro E.linearApproximationClosed
    (And.intro E.localLinearityClosed E.derivativeUniquenessClosed)

end HautevilleHouse.DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse
