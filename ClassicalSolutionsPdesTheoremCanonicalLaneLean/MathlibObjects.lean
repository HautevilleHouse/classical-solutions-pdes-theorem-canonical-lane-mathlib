import classicalSolutionsPdesTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassicalPdeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ClassicalPdeAdmittedObject where
  space : ClassicalPdeSpace
  openSet : Set ClassicalPdeSpace.carrier
  pdeSolution : Prop
  conclusion : pdeSolution

structure ClassicalPdeEndgameState where
  object : ClassicalPdeAdmittedObject

def ClassicalPdeWitnessClosed (O : ClassicalPdeAdmittedObject) : Prop :=
  O.pdeSolution

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
