import classicalSolutionsPdesTheoremCanonicalLaneLean.PDEAdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure PDESpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PDESolutionsAdmittedObject where
  domain : PDESpace
  equationParameters : Prop
  solutionExists : Prop
  solutionRegularity : Prop
  conclusion : solutionExists ∧ solutionRegularity

structure PDEWitness (O : PDESolutionsAdmittedObject) where
  solutionExistenceProof : O.solutionExists
  regularityProof : O.solutionRegularity

def PDEWitnessClosed (O : PDESolutionsAdmittedObject) : Prop :=
  O.solutionExists ∧ O.solutionRegularity

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse