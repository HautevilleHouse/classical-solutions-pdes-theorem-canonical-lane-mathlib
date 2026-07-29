import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure NonlinearEllipticPackage where
  growthCondition : Prop
  monotonicityCondition : Prop
  coercivityCondition : Prop
  weakSolutionExistence : Prop
  regularityLift : Prop

structure NonlinearEllipticEvidence (P : NonlinearEllipticPackage) where
  weakSolutionExistenceClosed : P.weakSolutionExistence
  regularityLiftClosed : P.regularityLift

def NonlinearEllipticClosed (P : NonlinearEllipticPackage) : Prop :=
  P.weakSolutionExistence ∧ P.regularityLift

theorem nonlinear_elliptic_closed_from_evidence (P : NonlinearEllipticPackage)
    (E : NonlinearEllipticEvidence P) : NonlinearEllipticClosed P := by
  exact And.intro E.weakSolutionExistenceClosed E.regularityLiftClosed

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse