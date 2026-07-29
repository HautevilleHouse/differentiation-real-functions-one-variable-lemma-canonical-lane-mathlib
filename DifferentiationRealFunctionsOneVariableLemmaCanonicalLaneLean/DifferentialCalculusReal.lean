import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure RealDifferential where
  f : ℝ → ℝ
  a : ℝ
  derivative : ℝ
  limitDefinition : Prop
  linearApproximation : Prop
  caratheodoryDefinition : Prop

structure RealDifferentialEvidence (D : RealDifferential) where
  limitDefinitionClosed : D.limitDefinition
  linearApproximationClosed : D.linearApproximation
  caratheodoryDefinitionClosed : D.caratheodoryDefinition

def RealDifferentialClosed (D : RealDifferential) : Prop :=
  D.limitDefinition ∧ D.linearApproximation ∧ D.caratheodoryDefinition

theorem real_differential_closed_from_evidence (D : RealDifferential) (E : RealDifferentialEvidence D) : RealDifferentialClosed D :=
  And.intro E.limitDefinitionClosed (And.intro E.linearApproximationClosed E.caratheodoryDefinitionClosed)

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse