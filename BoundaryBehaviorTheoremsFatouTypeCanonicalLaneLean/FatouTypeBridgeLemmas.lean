import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.FatouTypeAdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.boundaryLimitExists

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.boundaryLimitExists

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse