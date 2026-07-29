import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesTheoremCanonicalLaneLean.ParabolicWellPosedness

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure NavierStokesRegularityPackage where
  velocityField : Type u
  pressureField : Type v
  incompressibility : Prop
  LerayWeakSolution : Prop
  strongSolutionExistence : Prop
  regularityCriterion : Prop

structure NavierStokesRegularityEvidence (N : NavierStokesRegularityPackage) where
  incompressibilityClosed : N.incompressibility
  LerayWeakSolutionClosed : N.LerayWeakSolution
  strongSolutionExistenceClosed : N.strongSolutionExistence
  regularityCriterionClosed : N.regularityCriterion

def NavierStokesRegularityClosed (N : NavierStokesRegularityPackage) : Prop :=
  N.incompressibility ∧ N.LerayWeakSolution ∧ N.strongSolutionExistence ∧ N.regularityCriterion

theorem navier_stokes_regularity_closed_from_evidence
    (N : NavierStokesRegularityPackage) (Ev : NavierStokesRegularityEvidence N) :
    NavierStokesRegularityClosed N := by
  exact And.intro Ev.incompressibilityClosed
    (And.intro Ev.LerayWeakSolutionClosed
      (And.intro Ev.strongSolutionExistenceClosed Ev.regularityCriterionClosed))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse