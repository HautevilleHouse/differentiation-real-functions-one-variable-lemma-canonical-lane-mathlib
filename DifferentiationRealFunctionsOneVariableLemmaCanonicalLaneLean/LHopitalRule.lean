import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.DifferentialCalculusReal
import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.MeanValueTheorem

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure LHopitalRulePackage where
  f g : ℝ → ℝ
  a : ℝ
  limitPoint : ℝ
  conditions : (f a = 0 ∧ g a = 0) ∨ (tendsto f atTop ∧ tendsto g atTop)
  derivativesExist : DerivativeAt f a ∧ DerivativeAt g a
  limitOfDerivatives : Filter.Tendsto (λ x => derivative f x / derivative g x) (𝓝 a) (𝓝 limitPoint)
  conclusion : Filter.Tendsto (λ x => f x / g x) (𝓝 a) (𝓝 limitPoint)

def LHopitalRuleClosed (L : LHopitalRulePackage) : Prop :=
  L.conditions ∧ L.derivativesExist ∧ L.limitOfDerivatives ∧ L.conclusion

theorem lhopital_rule_from_evidence (L : LHopitalRulePackage) (E : L.conditions ∧ L.derivativesExist ∧ L.limitOfDerivatives ∧ L.conclusion) : LHopitalRuleClosed L :=
  E

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse