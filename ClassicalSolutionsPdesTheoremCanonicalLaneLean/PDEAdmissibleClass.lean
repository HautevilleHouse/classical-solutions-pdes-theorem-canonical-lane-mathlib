import classicalSolutionsPdesTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : PDESolutionsAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  PDEWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse