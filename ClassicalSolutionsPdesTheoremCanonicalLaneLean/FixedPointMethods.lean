import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure FixedPointPackage where
  functionSpace : Type
  contractionMapping : Prop
  schauderFixedPoint : Prop
  leraySchauderDegree : Prop
  continuationMethod : Prop

structure FixedPointEvidence (P : FixedPointPackage) where
  contractionMappingClosed : P.contractionMapping
  schauderFixedPointClosed : P.schauderFixedPoint
  leraySchauderDegreeClosed : P.leraySchauderDegree
  continuationMethodClosed : P.continuationMethod

def FixedPointClosed (P : FixedPointPackage) : Prop :=
  P.contractionMapping ∧ P.schauderFixedPoint ∧ P.leraySchauderDegree ∧ P.continuationMethod

theorem fixed_point_closed_from_evidence (P : FixedPointPackage)
    (E : FixedPointEvidence P) : FixedPointClosed P := by
  exact And.intro E.contractionMappingClosed
    (And.intro E.schauderFixedPointClosed
      (And.intro E.leraySchauderDegreeClosed E.continuationMethodClosed))

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse