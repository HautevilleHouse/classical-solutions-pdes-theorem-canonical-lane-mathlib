import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesTheoremCanonicalLaneLean.PDEEllipticRegularity

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure HyperbolicConservationLawsPackage where
  fluxFunction : Type u
  entropyCondition : Prop
  shockSolution : Prop
  LaxEntropyInequality : Prop
  uniquenessClass : Prop

structure HyperbolicConservationLawsEvidence (H : HyperbolicConservationLawsPackage) where
  entropyConditionClosed : H.entropyCondition
  shockSolutionClosed : H.shockSolution
  LaxEntropyInequalityClosed : H.LaxEntropyInequality
  uniquenessClassClosed : H.uniquenessClass

def HyperbolicConservationLawsClosed (H : HyperbolicConservationLawsPackage) : Prop :=
  H.entropyCondition ∧ H.shockSolution ∧ H.LaxEntropyInequality ∧ H.uniquenessClass

theorem hyperbolic_conservation_laws_closed_from_evidence
    (H : HyperbolicConservationLawsPackage) (Ev : HyperbolicConservationLawsEvidence H) :
    HyperbolicConservationLawsClosed H := by
  exact And.intro Ev.entropyConditionClosed
    (And.intro Ev.shockSolutionClosed
      (And.intro Ev.LaxEntropyInequalityClosed Ev.uniquenessClassClosed))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse