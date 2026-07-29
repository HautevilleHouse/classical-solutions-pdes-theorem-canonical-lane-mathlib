import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure SobolevEmbeddingPackage where
  domainDimension : ℕ
  sobolevExponent : ℝ
  embeddingExponent : ℝ
  compactEmbedding : Prop
  continuityEmbedding : Prop

structure SobolevEmbeddingEvidence (P : SobolevEmbeddingPackage) where
  compactEmbeddingClosed : P.compactEmbedding
  continuityEmbeddingClosed : P.continuityEmbedding

def SobolevEmbeddingClosed (P : SobolevEmbeddingPackage) : Prop :=
  P.compactEmbedding ∧ P.continuityEmbedding

theorem sobolev_embedding_closed_from_evidence (P : SobolevEmbeddingPackage)
    (E : SobolevEmbeddingEvidence P) : SobolevEmbeddingClosed P := by
  exact And.intro E.compactEmbeddingClosed E.continuityEmbeddingClosed

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse