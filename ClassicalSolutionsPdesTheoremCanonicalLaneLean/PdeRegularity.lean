import classicalSolutionsPdesTheoremCanonicalLaneLean.RiemannianCurvature

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure PdeRegularityPackage (G : RiemannianCurvaturePackage) where
  linearEllipticOperator : Type u
  coercivityEstimate : Prop
  regularityGain : Prop
  maximalRegularity : Prop

structure PdeRegularityEvidence {G : RiemannianCurvaturePackage} (R : PdeRegularityPackage G) where
  coercivityEstimateClosed : R.coercivityEstimate
  regularityGainClosed : R.regularityGain
  maximalRegularityClosed : R.maximalRegularity

def PdeRegularityClosed {G : RiemannianCurvaturePackage} (R : PdeRegularityPackage G) : Prop :=
  R.coercivityEstimate ∧ R.regularityGain ∧ R.maximalRegularity

theorem pde_regularity_closed_from_evidence
    {G : RiemannianCurvaturePackage} (R : PdeRegularityPackage G)
    (E : PdeRegularityEvidence R) : PdeRegularityClosed R := by
  exact And.intro E.coercivityEstimateClosed
    (And.intro E.regularityGainClosed E.maximalRegularityClosed)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
