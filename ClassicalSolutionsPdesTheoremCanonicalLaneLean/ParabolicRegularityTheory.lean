import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure ParabolicRegularityPackage where
  holderExponent : ℝ
  spatialRegularity : ℕ
  timeRegularity : ℕ
  schauderEstimate : Prop
  maximalRegularity : Prop

structure ParabolicRegularityEvidence (P : ParabolicRegularityPackage) where
  schauderEstimateClosed : P.schauderEstimate
  maximalRegularityClosed : P.maximalRegularity

def ParabolicRegularityClosed (P : ParabolicRegularityPackage) : Prop :=
  P.schauderEstimate ∧ P.maximalRegularity

theorem parabolic_regularity_closed_from_evidence (P : ParabolicRegularityPackage)
    (E : ParabolicRegularityEvidence P) : ParabolicRegularityClosed P := by
  exact And.intro E.schauderEstimateClosed E.maximalRegularityClosed

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse