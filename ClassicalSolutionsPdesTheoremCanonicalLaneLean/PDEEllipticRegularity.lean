import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure EllipticRegularityPackage where
  holderSpace : Type u
  sobolevSpace : Type v
  interiorEstimate : Prop
  boundaryEstimate : Prop
  schauderEstimate : Prop

structure EllipticRegularityEvidence (E : EllipticRegularityPackage) where
  interiorEstimateClosed : E.interiorEstimate
  boundaryEstimateClosed : E.boundaryEstimate
  schauderEstimateClosed : E.schauderEstimate

def EllipticRegularityClosed (E : EllipticRegularityPackage) : Prop :=
  E.interiorEstimate ∧ E.boundaryEstimate ∧ E.schauderEstimate

theorem elliptic_regularity_closed_from_evidence (E : EllipticRegularityPackage)
    (Ev : EllipticRegularityEvidence E) : EllipticRegularityClosed E := by
  exact And.intro Ev.interiorEstimateClosed
    (And.intro Ev.boundaryEstimateClosed Ev.schauderEstimateClosed)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse