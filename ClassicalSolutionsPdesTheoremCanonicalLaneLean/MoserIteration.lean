import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure MoserIterationPackage where
  deGiorgiClass : Prop
  harnackInequality : Prop
  holderRegularity : Prop
  iterationBound : ℝ

structure MoserIterationEvidence (P : MoserIterationPackage) where
  deGiorgiClassClosed : P.deGiorgiClass
  harnackInequalityClosed : P.harnackInequality
  holderRegularityClosed : P.holderRegularity

def MoserIterationClosed (P : MoserIterationPackage) : Prop :=
  P.deGiorgiClass ∧ P.harnackInequality ∧ P.holderRegularity

theorem moser_iteration_closed_from_evidence (P : MoserIterationPackage)
    (E : MoserIterationEvidence P) : MoserIterationClosed P := by
  exact And.intro E.deGiorgiClassClosed (And.intro E.harnackInequalityClosed E.holderRegularityClosed)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse