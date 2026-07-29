import canonicalLaneMathlib.AdmissibleClass
import ClassicalSolutionsPdesTheoremCanonicalLaneLean.PDEEllipticRegularity

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure ParabolicWellPosednessPackage where
  timeDomain : Type u
  initialCondition : Prop
  boundaryCondition : Prop
  existenceInterval : Prop
  uniquenessEstimate : Prop
  continuousDependence : Prop

structure ParabolicWellPosednessEvidence (P : ParabolicWellPosednessPackage) where
  initialConditionClosed : P.initialCondition
  boundaryConditionClosed : P.boundaryCondition
  existenceIntervalClosed : P.existenceInterval
  uniquenessEstimateClosed : P.uniquenessEstimate
  continuousDependenceClosed : P.continuousDependence

def ParabolicWellPosednessClosed (P : ParabolicWellPosednessPackage) : Prop :=
  P.initialCondition ∧ P.boundaryCondition ∧ P.existenceInterval ∧
  P.uniquenessEstimate ∧ P.continuousDependence

theorem parabolic_well_posedness_closed_from_evidence
    (P : ParabolicWellPosednessPackage) (Ev : ParabolicWellPosednessEvidence P) :
    ParabolicWellPosednessClosed P := by
  exact And.intro Ev.initialConditionClosed
    (And.intro Ev.boundaryConditionClosed
      (And.intro Ev.existenceIntervalClosed
        (And.intro Ev.uniquenessEstimateClosed Ev.continuousDependenceClosed)))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse