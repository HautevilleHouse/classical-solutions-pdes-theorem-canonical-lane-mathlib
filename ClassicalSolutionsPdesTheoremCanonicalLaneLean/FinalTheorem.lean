import classicalSolutionsPdesTheoremCanonicalLaneLean.SobolevSpaceRegularity

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

def ConstrainedClassicalSolutionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classical_solutions_endgame (A : AdmissibleClass) :
    ConstrainedClassicalSolutionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
