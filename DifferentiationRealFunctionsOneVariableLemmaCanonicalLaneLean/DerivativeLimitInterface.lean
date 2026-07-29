import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.BridgeLemmas

/-!
# Derivative-Limit Interface Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DerivativeLimitPackage (A : AdmissibleClass) where
  derivativeDefined : Prop
  limitExists : Prop
  differentialQuotient : Prop
  continuityCondition : Prop

structure DerivativeLimitEvidence {A : AdmissibleClass} (D : DerivativeLimitPackage A) where
  derivativeDefinedClosed : D.derivativeDefined
  limitExistsClosed : D.limitExists
  differentialQuotientClosed : D.differentialQuotient
  continuityConditionClosed : D.continuityCondition

def DerivativeLimitClosed {A : AdmissibleClass} (D : DerivativeLimitPackage A) : Prop :=
  D.derivativeDefined ∧ D.limitExists ∧ D.differentialQuotient ∧ D.continuityCondition

theorem derivative_limit_closed_from_evidence {A : AdmissibleClass} (D : DerivativeLimitPackage A) (E : DerivativeLimitEvidence D) : DerivativeLimitClosed D := by
  exact And.intro E.derivativeDefinedClosed (And.intro E.limitExistsClosed (And.intro E.differentialQuotientClosed E.continuityConditionClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse