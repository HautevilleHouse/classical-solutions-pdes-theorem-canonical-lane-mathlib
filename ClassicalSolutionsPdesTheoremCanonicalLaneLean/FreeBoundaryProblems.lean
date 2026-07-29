import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesTheoremCanonicalLaneLean.PDEEllipticRegularity
import ClassicalSolutionsPdesTheoremCanonicalLaneLean.ParabolicWellPosedness

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure FreeBoundaryProblemsPackage where
  freeBoundary : Type u
  movingBoundaryCondition : Prop
  interfaceEvolution : Prop
  regularityUpToBoundary : Prop
  monotonicityFormula : Prop

structure FreeBoundaryProblemsEvidence (F : FreeBoundaryProblemsPackage) where
  movingBoundaryConditionClosed : F.movingBoundaryCondition
  interfaceEvolutionClosed : F.interfaceEvolution
  regularityUpToBoundaryClosed : F.regularityUpToBoundary
  monotonicityFormulaClosed : F.monotonicityFormula

def FreeBoundaryProblemsClosed (F : FreeBoundaryProblemsPackage) : Prop :=
  F.movingBoundaryCondition ∧ F.interfaceEvolution ∧
  F.regularityUpToBoundary ∧ F.monotonicityFormula

theorem free_boundary_problems_closed_from_evidence
    (F : FreeBoundaryProblemsPackage) (Ev : FreeBoundaryProblemsEvidence F) :
    FreeBoundaryProblemsClosed F := by
  exact And.intro Ev.movingBoundaryConditionClosed
    (And.intro Ev.interfaceEvolutionClosed
      (And.intro Ev.regularityUpToBoundaryClosed Ev.monotonicityFormulaClosed))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse