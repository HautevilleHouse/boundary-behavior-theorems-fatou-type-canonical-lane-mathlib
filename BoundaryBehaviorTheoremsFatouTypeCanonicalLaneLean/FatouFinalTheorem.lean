import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

def ConstrainedFatouClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fatou_endgame (A : AdmissibleClass) :
    ConstrainedFatouClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse