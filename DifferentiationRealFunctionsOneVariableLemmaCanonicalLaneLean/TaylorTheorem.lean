import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure TaylorTheoremPackage where
  f : ℝ → ℝ
  a : ℝ
  n : ℕ
  differentiableTimes : Prop
  remainderFormula : Prop
  taylorPolynomial : ℝ → ℝ
  limitRemainder : Prop

structure TaylorTheoremEvidence (T : TaylorTheoremPackage) where
  differentiableTimesClosed : T.differentiableTimes
  remainderFormulaClosed : T.remainderFormula
  limitRemainderClosed : T.limitRemainder

def TaylorTheoremClosed (T : TaylorTheoremPackage) : Prop :=
  T.differentiableTimes ∧ T.remainderFormula ∧ T.limitRemainder

theorem taylor_theorem_closed_from_evidence (T : TaylorTheoremPackage) (E : TaylorTheoremEvidence T) :
    TaylorTheoremClosed T := by
  exact And.intro E.differentiableTimesClosed
    (And.intro E.remainderFormulaClosed E.limitRemainderClosed)

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse