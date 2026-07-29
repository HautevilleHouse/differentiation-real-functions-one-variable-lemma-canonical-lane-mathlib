import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

def gateClosed (A : AdmissibleFunctionClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleFunctionClass) :
    gateClosed A := by
  exact A.gateWitness

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse