import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure NontangentialLimitPackage where
  exists : Prop
  equalsRadialLimit : Prop
  coneAngle : ℝ
  nontangentialLimitExists : exists
  nontangentialEqualsRadial : equalsRadialLimit

structure NontangentialLimitEvidence (N : NontangentialLimitPackage) where
  nontangentialLimitExistsClosed : N.nontangentialLimitExists
  nontangentialEqualsRadialClosed : N.nontangentialEqualsRadial

def NontangentialLimitClosed (N : NontangentialLimitPackage) : Prop :=
  N.exists ∧ N.equalsRadialLimit

theorem nontangential_limit_closed_from_evidence (N : NontangentialLimitPackage) (E : NontangentialLimitEvidence N) :
    NontangentialLimitClosed N := by
  exact And.intro E.nontangentialLimitExistsClosed E.nontangentialEqualsRadialClosed

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse