import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DifferentiabilityPackage where
  domain : Set ℝ
  point : ℝ
  limitExists : Prop
  derivativeValue : ℝ
  continuityAtPoint : Prop

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  limitExistsClosed : D.limitExists
  derivativeValueClosed : D.derivativeValue = D.derivativeValue
  continuityAtPointClosed : D.continuityAtPoint

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.limitExists ∧ D.continuityAtPoint

theorem differentiability_closed_from_evidence (D : DifferentiabilityPackage) (E : DifferentiabilityEvidence D) :
    DifferentiabilityClosed D := by
  exact And.intro E.limitExistsClosed E.continuityAtPointClosed

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse