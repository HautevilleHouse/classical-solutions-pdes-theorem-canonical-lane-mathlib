import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure ClassicalSolutionPDEPackage where
  equation : Type u
  domain : Type v
  boundaryCondition : Type w
  solution : Type x
  equationWellPosed : Prop
  domainRegular : Prop
  boundaryConditionSatisfied : Prop
  solutionExists : Prop
  solutionUnique : Prop
  solutionSmooth : Prop

structure ClassicalSolutionPDEEvidence (P : ClassicalSolutionPDEPackage) where
  equationWellPosedClosed : P.equationWellPosed
  domainRegularClosed : P.domainRegular
  boundaryConditionSatisfiedClosed : P.boundaryConditionSatisfied
  solutionExistsClosed : P.solutionExists
  solutionUniqueClosed : P.solutionUnique
  solutionSmoothClosed : P.solutionSmooth

def ClassicalSolutionPDEClosed (P : ClassicalSolutionPDEPackage) : Prop :=
  P.equationWellPosed ∧ P.domainRegular ∧ P.boundaryConditionSatisfied ∧
  P.solutionExists ∧ P.solutionUnique ∧ P.solutionSmooth

theorem classical_solution_pde_closed_from_evidence (P : ClassicalSolutionPDEPackage)
    (E : ClassicalSolutionPDEEvidence P) : ClassicalSolutionPDEClosed P := by
  exact And.intro E.equationWellPosedClosed
    (And.intro E.domainRegularClosed
      (And.intro E.boundaryConditionSatisfiedClosed
        (And.intro E.solutionExistsClosed
          (And.intro E.solutionUniqueClosed E.solutionSmoothClosed))))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
