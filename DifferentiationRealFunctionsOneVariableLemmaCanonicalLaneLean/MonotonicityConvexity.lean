import DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean.DifferentialCalculusReal

namespace HautevilleHouse
namespace DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean

structure MonotonicityConvexityPackage where
  f : ℝ → ℝ
  interval : Set ℝ
  derivativeSign : (∀ x ∈ interval, derivative f x > 0) → StrictlyIncreasingOn f interval
  derivativePositive : (∀ x ∈ interval, derivative f x = 0) → ConstantOn f interval
  secondDerivativeSign : (∀ x ∈ interval, derivative (derivative f) x ≥ 0) → ConvexOn ℝ interval f

def StrictlyIncreasingOn (f : ℝ → ℝ) (I : Set ℝ) : Prop :=
  ∀ x y ∈ I, x < y → f x < f y

def ConstantOn (f : ℝ → ℝ) (I : Set ℝ) : Prop :=
  ∀ x y ∈ I, f x = f y

theorem monotonicity_from_derivative (f : ℝ → ℝ) (I : Set ℝ) (hpos : ∀ x ∈ I, derivative f x > 0) : StrictlyIncreasingOn f I :=
  by
    intro x y hx hy hlt
    have := mean_value_theorem (f:=f) (a:=x) (b:=y) (h:=hlt)
    rcases this with ⟨ξ, hξ⟩
    have hposξ : derivative f ξ > 0 := hpos ξ (mem_of_mem_of_subset hξ (interval_subset_Ioo _ _ ?_))
    -- details omitted
    sorry

theorem convexity_from_second_derivative (f : ℝ → ℝ) (I : Set ℝ) (hpos : ∀ x ∈ I, derivative (derivative f) x ≥ 0) : ConvexOn ℝ I f :=
  sorry

end DifferentiationRealFunctionsOneVariableLemmaCanonicalLaneLean
end HautevilleHouse