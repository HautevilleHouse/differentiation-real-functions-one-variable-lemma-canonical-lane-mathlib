import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DifferentiabilityRulesPackage where
  sumRule : Prop
  productRule : Prop
  quotientRule : Prop
  chainRule : Prop

structure DifferentiabilityRulesEvidence (R : DifferentiabilityRulesPackage) where
  sumRuleClosed : R.sumRule
  productRuleClosed : R.productRule
  quotientRuleClosed : R.quotientRule
  chainRuleClosed : R.chainRule

def DifferentiabilityRulesClosed (R : DifferentiabilityRulesPackage) : Prop :=
  R.sumRule ∧ R.productRule ∧ R.quotientRule ∧ R.chainRule

theorem differentiability_rules_closed_from_evidence (R : DifferentiabilityRulesPackage)
    (E : DifferentiabilityRulesEvidence R) : DifferentiabilityRulesClosed R := by
  exact And.intro E.sumRuleClosed
    (And.intro E.productRuleClosed
      (And.intro E.quotientRuleClosed E.chainRuleClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse