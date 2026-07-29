import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DerivativeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse