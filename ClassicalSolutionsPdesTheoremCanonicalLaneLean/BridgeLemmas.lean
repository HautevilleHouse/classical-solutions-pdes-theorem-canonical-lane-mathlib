import classicalSolutionsPdesTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ClassicalSolutionsPdesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassicalPdeWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassicalSolutionsPdesTheoremCanonicalLaneLean
end HautevilleHouse
