import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.DifferentialCalculusReal

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure InverseFunctionTheoremPackage where
  f : ℝ → ℝ
  a : ℝ
  f_is_differentiable_at_a : DerivativeAt f a
  derivative_nonzero : derivative f a ≠ 0
  conclusion : ∃ U open neighborhood of a, ∃ V open neighborhood of f a, f ↾ U bijective onto V, inverse is differentiable with derivative 1/(derivative f a)

def InverseFunctionTheoremClosed (I : InverseFunctionTheoremPackage) : Prop :=
  I.f_is_differentiable_at_a ∧ I.derivative_nonzero ∧ I.conclusion

theorem inverse_function_theorem_from_evidence (I : InverseFunctionTheoremPackage) (E : I.f_is_differentiable_at_a ∧ I.derivative_nonzero ∧ I.conclusion) : InverseFunctionTheoremClosed I :=
  E

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse