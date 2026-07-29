import classicalSolutionsPdesTheoremCanonicalLaneLean.SobolevSpaces

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure ClassicalSolutionExistencePackage
    {G : RiemannianCurvaturePackage} {R : PdeRegularityPackage G}
    (S : SobolevSpacePackage R) where
  initialDataRegular : Prop
  existenceTime : Prop
  solutionConstructed : Prop
  uniquenessHolds : Prop

structure ClassicalSolutionExistenceEvidence
    {G : RiemannianCurvaturePackage} {R : PdeRegularityPackage G}
    {S : SobolevSpacePackage R} (E : ClassicalSolutionExistencePackage S) where
  initialDataRegularClosed : E.initialDataRegular
  existenceTimeClosed : E.existenceTime
  solutionConstructedClosed : E.solutionConstructed
  uniquenessHoldsClosed : E.uniquenessHolds

def ClassicalSolutionExistenceClosed
    {G : RiemannianCurvaturePackage} {R : PdeRegularityPackage G}
    {S : SobolevSpacePackage R} (E : ClassicalSolutionExistencePackage S) : Prop :=
  E.initialDataRegular ∧ E.existenceTime ∧ E.solutionConstructed ∧ E.uniquenessHolds

theorem classical_solution_existence_closed_from_evidence
    {G : RiemannianCurvaturePackage} {R : PdeRegularityPackage G}
    {S : SobolevSpacePackage R} (E : ClassicalSolutionExistencePackage S)
    (Ev : ClassicalSolutionExistenceEvidence E) : ClassicalSolutionExistenceClosed E := by
  exact And.intro Ev.initialDataRegularClosed
    (And.intro Ev.existenceTimeClosed
      (And.intro Ev.solutionConstructedClosed Ev.uniquenessHoldsClosed))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
