import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.TaylorTheorem

/-!
# Differentiability Class Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DifferentiabilityClassPackage {A : AdmissibleClass} {D : DerivativeLimitPackage A} {R : DifferentiationRulesPackage D} {M : MeanValueTheoremPackage R} (T : TaylorTheoremPackage M) where
  higherDerivatives : Prop
  smoothClass : Prop
  analyticClass : Prop

structure DifferentiabilityClassEvidence {A : AdmissibleClass} {D : DerivativeLimitPackage A} {R : DifferentiationRulesPackage D} {M : MeanValueTheoremPackage R} {T : TaylorTheoremPackage M} (C : DifferentiabilityClassPackage T) where
  higherDerivativesClosed : C.higherDerivatives
  smoothClassClosed : C.smoothClass
  analyticClassClosed : C.analyticClass

def DifferentiabilityClassClosed {A : AdmissibleClass} {D : DerivativeLimitPackage A} {R : DifferentiationRulesPackage D} {M : MeanValueTheoremPackage R} {T : TaylorTheoremPackage M} (C : DifferentiabilityClassPackage T) : Prop :=
  C.higherDerivatives ∧ C.smoothClass ∧ C.analyticClass

theorem differentiability_class_closed_from_evidence {A : AdmissibleClass} {D : DerivativeLimitPackage A} {R : DifferentiationRulesPackage D} {M : MeanValueTheoremPackage R} {T : TaylorTheoremPackage M} (C : DifferentiabilityClassPackage T) (E : DifferentiabilityClassEvidence C) : DifferentiabilityClassClosed C := by
  exact And.intro E.higherDerivativesClosed (And.intro E.smoothClassClosed E.analyticClassClosed)

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse