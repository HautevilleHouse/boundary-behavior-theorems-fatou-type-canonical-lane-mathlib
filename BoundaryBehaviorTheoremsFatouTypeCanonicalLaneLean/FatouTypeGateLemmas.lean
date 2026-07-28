import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.FatouTypeAdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse