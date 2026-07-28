import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.FatouTypeBridgeLemmas
import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.FatouTypeGateLemmas

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

def ConstrainedFatouClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fatou_endgame (A : AdmissibleClass) : ConstrainedFatouClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse