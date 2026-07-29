import classicalSolutionsPdesTheoremCanonicalLaneLean.ClassicalSolutionPdePackage

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure SobolevSpacePackage where
  exponent : ℝ
  domainRegularity : ℕ
  functionSpace : Type u
  normDefined : Prop
  embeddingTheorems : Prop
  compactEmbedding : Prop

structure SobolevSpaceEvidence (S : SobolevSpacePackage) where
  normDefinedClosed : S.normDefined
  embeddingTheoremsClosed : S.embeddingTheorems
  compactEmbeddingClosed : S.compactEmbedding

def SobolevSpaceClosed (S : SobolevSpacePackage) : Prop :=
  S.normDefined ∧ S.embeddingTheorems ∧ S.compactEmbedding

theorem sobolev_space_closed_from_evidence (S : SobolevSpacePackage)
    (E : SobolevSpaceEvidence S) : SobolevSpaceClosed S := by
  exact And.intro E.normDefinedClosed
    (And.intro E.embeddingTheoremsClosed E.compactEmbeddingClosed)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
