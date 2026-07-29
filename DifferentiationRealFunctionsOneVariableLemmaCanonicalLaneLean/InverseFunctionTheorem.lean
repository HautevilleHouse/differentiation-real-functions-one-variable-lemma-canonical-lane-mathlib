import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure InverseFunctionTheoremPackage where
  f : ℝ → ℝ
  a : ℝ
  derivativeNonzero : Prop
  differentiableNeighborhood : Prop
  localInverseExists : Prop
  inverseDifferentiable : Prop
  derivativeInverseFormula : Prop

structure InverseFunctionTheoremEvidence (I : InverseFunctionTheoremPackage) where
  derivativeNonzeroClosed : I.derivativeNonzero
  differentiableNeighborhoodClosed : I.differentiableNeighborhood
  localInverseExistsClosed : I.localInverseExists
  inverseDifferentiableClosed : I.inverseDifferentiable
  derivativeInverseFormulaClosed : I.derivativeInverseFormula

def InverseFunctionTheoremClosed (I : InverseFunctionTheoremPackage) : Prop :=
  I.derivativeNonzero ∧ I.differentiableNeighborhood ∧ I.localInverseExists ∧
  I.inverseDifferentiable ∧ I.derivativeInverseFormula

theorem inverse_function_theorem_closed_from_evidence (I : InverseFunctionTheoremPackage) (E : InverseFunctionTheoremEvidence I) :
    InverseFunctionTheoremClosed I := by
  exact And.intro E.derivativeNonzeroClosed
    (And.intro E.differentiableNeighborhoodClosed
      (And.intro E.localInverseExistsClosed
        (And.intro E.inverseDifferentiableClosed E.derivativeInverseFormulaClosed)))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse