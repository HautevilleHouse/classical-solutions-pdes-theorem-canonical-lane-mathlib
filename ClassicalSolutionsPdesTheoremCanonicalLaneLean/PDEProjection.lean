import classicalSolutionsPdesTheoremCanonicalLaneLean.PDEAdmissibleClass

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure PDEEndgameState where
  object : PDESolutionsAdmittedObject

def pdeProjection : Projection PDEEndgameState := {
  toFun := fun x => x
  idempotent := by intro x; rfl
}

theorem pde_projection_idempotent (x : PDEEndgameState) :
    pdeProjection.toFun (pdeProjection.toFun x) = pdeProjection.toFun x := by
  exact pdeProjection.idempotent x

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse