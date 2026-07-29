import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure InitialBoundaryRegularityPackage where
  boundarySmoothness : ℕ
  initialDataRegularity : ℕ
  compatibilityConditions : Prop
  maximalRegularityEstimate : Prop
  traceTheorem : Prop

structure InitialBoundaryRegularityEvidence (P : InitialBoundaryRegularityPackage) where
  compatibilityConditionsClosed : P.compatibilityConditions
  maximalRegularityEstimateClosed : P.maximalRegularityEstimate
  traceTheoremClosed : P.traceTheorem

def InitialBoundaryRegularityClosed (P : InitialBoundaryRegularityPackage) : Prop :=
  P.compatibilityConditions ∧ P.maximalRegularityEstimate ∧ P.traceTheorem

theorem initial_boundary_regularity_closed_from_evidence
    (P : InitialBoundaryRegularityPackage)
    (E : InitialBoundaryRegularityEvidence P) : InitialBoundaryRegularityClosed P := by
  exact And.intro E.compatibilityConditionsClosed
    (And.intro E.maximalRegularityEstimateClosed E.traceTheoremClosed)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse