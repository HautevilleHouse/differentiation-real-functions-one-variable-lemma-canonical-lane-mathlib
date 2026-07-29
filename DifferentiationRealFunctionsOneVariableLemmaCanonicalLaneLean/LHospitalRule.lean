import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure LHospitalRulePackage where
  f : ℝ → ℝ
  g : ℝ → ℝ
  a : ℝ
  limitsBothZeroOrInfinity : Prop
  derivativeRatioLimitExists : Prop
  limitOfRatioExists : Prop
  equalLimits : Prop

structure LHospitalRuleEvidence (L : LHospitalRulePackage) where
  limitsBothZeroOrInfinityClosed : L.limitsBothZeroOrInfinity
  derivativeRatioLimitExistsClosed : L.derivativeRatioLimitExists
  limitOfRatioExistsClosed : L.limitOfRatioExists
  equalLimitsClosed : L.equalLimits

def LHospitalRuleClosed (L : LHospitalRulePackage) : Prop :=
  L.limitsBothZeroOrInfinity ∧ L.derivativeRatioLimitExists ∧ L.limitOfRatioExists ∧ L.equalLimits

theorem l_hospital_rule_closed_from_evidence (L : LHospitalRulePackage) (E : LHospitalRuleEvidence L) :
    LHospitalRuleClosed L := by
  exact And.intro E.limitsBothZeroOrInfinityClosed
    (And.intro E.derivativeRatioLimitExistsClosed
      (And.intro E.limitOfRatioExistsClosed E.equalLimitsClosed))

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse