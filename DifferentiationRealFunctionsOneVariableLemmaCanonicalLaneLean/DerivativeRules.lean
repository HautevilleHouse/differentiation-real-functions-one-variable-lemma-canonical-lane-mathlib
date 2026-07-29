import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure DerivativeRulesPackage (A : AdmissibleFunctionClass) where
  sumRule : Prop
  productRule : Prop
  chainRule : Prop
  quotientRule : Prop
  powerRule : Prop

def DerivativeRulesClosed {A : AdmissibleFunctionClass} (P : DerivativeRulesPackage A) : Prop :=
  P.sumRule ∧ P.productRule ∧ P.chainRule ∧ P.quotientRule ∧ P.powerRule

theorem derivative_rules_closed_from_evidence {A : AdmissibleFunctionClass}
    (P : DerivativeRulesPackage A) (E : DerivativeRulesEvidence P) :
    DerivativeRulesClosed P := by
  exact And.intro E.sumRuleClosed (And.intro E.productRuleClosed (And.intro E.chainRuleClosed (And.intro E.quotientRuleClosed E.powerRuleClosed)))

structure DerivativeRulesEvidence {A : AdmissibleFunctionClass}
    (P : DerivativeRulesPackage A) where
  sumRuleClosed : P.sumRule
  productRuleClosed : P.productRule
  chainRuleClosed : P.chainRule
  quotientRuleClosed : P.quotientRule
  powerRuleClosed : P.powerRule

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse