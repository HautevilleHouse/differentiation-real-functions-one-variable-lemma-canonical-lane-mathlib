import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.DerivativeLimitInterface

/-!
# Differentiation Rules Package
-/

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DifferentiationRulesPackage {A : AdmissibleClass} (D : DerivativeLimitPackage A) where
  sumRule : Prop
  productRule : Prop
  chainRule : Prop
  quotientRule : Prop

structure DifferentiationRulesEvidence {A : AdmissibleClass} {D : DerivativeLimitPackage A} (R : DifferentiationRulesPackage D) where
  sumRuleClosed : R.sumRule
  productRuleClosed : R.productRule
  chainRuleClosed : R.chainRule
  quotientRuleClosed : R.quotientRule

def DifferentiationRulesClosed {A : AdmissibleClass} {D : DerivativeLimitPackage A} (R : DifferentiationRulesPackage D) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.chainRule ∧ R.quotientRule

theorem differentiation_rules_closed_from_evidence {A : AdmissibleClass} {D : DerivativeLimitPackage A} (R : DifferentiationRulesPackage D) (E : DifferentiationRulesEvidence R) : DifferentiationRulesClosed R := by
  exact And.intro E.sumRuleClosed (And.intro E.productRuleClosed (And.intro E.chainRuleClosed E.quotientRuleClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse