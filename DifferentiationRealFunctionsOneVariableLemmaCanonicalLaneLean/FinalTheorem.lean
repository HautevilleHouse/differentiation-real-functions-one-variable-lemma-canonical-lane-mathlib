import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

def ConstrainedDifferentiationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_differentiation_endgame (A : AdmissibleClass) :
    ConstrainedDifferentiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse
