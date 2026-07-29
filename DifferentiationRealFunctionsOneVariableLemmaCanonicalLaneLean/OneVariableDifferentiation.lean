import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DerivativeExistence where
  f : ℝ → ℝ
  a : ℝ
  derivativeExists : Prop
  limitDefined : Prop

structure DerivativeExistenceEvidence (D : DerivativeExistence) where
  derivativeExistsClosed : D.derivativeExists
  limitDefinedClosed : D.limitDefined

def DerivativeExistenceClosed (D : DerivativeExistence) : Prop :=
  D.derivativeExists ∧ D.limitDefined

theorem derivative_existence_closed_from_evidence (D : DerivativeExistence)
    (E : DerivativeExistenceEvidence D) : DerivativeExistenceClosed D := by
  exact And.intro E.derivativeExistsClosed E.limitDefinedClosed

end HautevilleHouse.DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse
