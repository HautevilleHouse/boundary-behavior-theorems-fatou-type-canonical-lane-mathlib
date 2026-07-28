import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure RadialLimitPackage where
  exists : Prop
  equalsBoundaryFunction : Prop
  convergenceMode : String
  radialLimitExists : exists
  radialLimitEqualsBoundary : equalsBoundaryFunction

structure RadialLimitEvidence (R : RadialLimitPackage) where
  radialLimitExistsClosed : R.radialLimitExists
  radialLimitEqualsBoundaryClosed : R.radialLimitEqualsBoundary

def RadialLimitClosed (R : RadialLimitPackage) : Prop :=
  R.exists ∧ R.equalsBoundaryFunction

theorem radial_limit_closed_from_evidence (R : RadialLimitPackage) (E : RadialLimitEvidence R) :
    RadialLimitClosed R := by
  exact And.intro E.radialLimitExistsClosed E.radialLimitEqualsBoundaryClosed

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse