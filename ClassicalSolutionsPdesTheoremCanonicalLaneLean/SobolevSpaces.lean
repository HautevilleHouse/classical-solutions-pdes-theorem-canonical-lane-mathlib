import classicalSolutionsPdesTheoremCanonicalLaneLean.PdeRegularity

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure SobolevSpacePackage (G : PdeRegularityPackage) where
  exponent : Nat
  integrabilityCondition : Prop
  weakDerivativeDefined : Prop
  embeddingTheorems : Prop

structure SobolevSpaceEvidence {G : PdeRegularityPackage} (S : SobolevSpacePackage G) where
  integrabilityConditionClosed : S.integrabilityCondition
  weakDerivativeDefinedClosed : S.weakDerivativeDefined
  embeddingTheoremsClosed : S.embeddingTheorems

def SobolevSpaceClosed {G : PdeRegularityPackage} (S : SobolevSpacePackage G) : Prop :=
  S.integrabilityCondition ∧ S.weakDerivativeDefined ∧ S.embeddingTheorems

theorem sobolev_space_closed_from_evidence
    {G : PdeRegularityPackage} (S : SobolevSpacePackage G)
    (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.weakDerivativeDefinedClosed E.embeddingTheoremsClosed)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
