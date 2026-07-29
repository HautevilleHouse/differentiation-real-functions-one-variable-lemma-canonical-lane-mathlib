import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure InverseImplicitFunctionsPackage where
  inverseFunctionTheorem : Prop
  implicitFunctionTheorem : Prop
  localDiffeomorphism : Prop
  derivativeOfInverse : Prop

structure InverseImplicitFunctionsEvidence (I : InverseImplicitFunctionsPackage) where
  inverseFunctionTheoremClosed : I.inverseFunctionTheorem
  implicitFunctionTheoremClosed : I.implicitFunctionTheorem
  localDiffeomorphismClosed : I.localDiffeomorphism
  derivativeOfInverseClosed : I.derivativeOfInverse

def InverseImplicitFunctionsClosed (I : InverseImplicitFunctionsPackage) : Prop :=
  I.inverseFunctionTheorem ∧ I.implicitFunctionTheorem ∧ I.localDiffeomorphism ∧ I.derivativeOfInverse

theorem inverse_implicit_functions_closed_from_evidence (I : InverseImplicitFunctionsPackage)
    (E : InverseImplicitFunctionsEvidence I) : InverseImplicitFunctionsClosed I := by
  exact And.intro E.inverseFunctionTheoremClosed
    (And.intro E.implicitFunctionTheoremClosed
      (And.intro E.localDiffeomorphismClosed E.derivativeOfInverseClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse