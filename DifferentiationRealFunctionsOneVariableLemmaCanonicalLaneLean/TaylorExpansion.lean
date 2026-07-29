import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure TaylorExpansionPackage where
  order : ℕ
  remainder : Prop
  errorBound : Prop
  formula : Prop
  formulaClosed : formula

def TaylorExpansionClosed (T : TaylorExpansionPackage) : Prop :=
  T.formula ∧ T.remainder ∧ T.errorBound

theorem taylor_expansion_closed_from_evidence (T : TaylorExpansionPackage)
    (E : TaylorExpansionEvidence T) : TaylorExpansionClosed T := by
  exact And.intro E.formulaClosed (And.intro E.remainderClosed E.errorBoundClosed)

structure TaylorExpansionEvidence (T : TaylorExpansionPackage) where
  remainderClosed : T.remainder
  errorBoundClosed : T.errorBound
  formulaClosed : T.formula

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse