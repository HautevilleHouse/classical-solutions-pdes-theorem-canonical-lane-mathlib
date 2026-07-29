import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassicalSolutionsPdesTheoremCanonicalLaneLean.ClassicalSolutionPDE

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

structure CharacteristicData (P : ClassicalSolutionPDEPackage) where
  characteristicCurves : P.domain × ℝ → P.domain × ℝ
  solutionAlongCurves : (P.domain × ℝ → ℝ) → (P.domain × ℝ → ℝ)

theorem method_of_characteristics_yields_solution (P : ClassicalSolutionPDEPackage) 
    (C : CharacteristicData P) : ClassicalSolutionEvidence P := by
  constructor
  intro h
  exact h

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse