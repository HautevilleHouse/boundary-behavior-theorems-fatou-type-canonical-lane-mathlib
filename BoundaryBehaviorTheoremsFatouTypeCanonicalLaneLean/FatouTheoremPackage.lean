import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.FatouRadialLimit
import HautevilleHouse.BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.BoundaryContinuity

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure FatouTheoremPackage (A : AdmissibleClass) (R : RadialLimitPackage) (N : NontangentialLimitPackage) where
  radialLimitClosed : RadialLimitClosed R
  nontangentialLimitClosed : NontangentialLimitClosed N
  compatibility : Prop
  compatibilityTerm : compatibility

structure FatouTheoremEvidence (A : AdmissibleClass) (R : RadialLimitPackage) (N : NontangentialLimitPackage) (F : FatouTheoremPackage A R N) where
  radialLimitClosedEvidence : F.radialLimitClosed
  nontangentialLimitClosedEvidence : F.nontangentialLimitClosed
  compatibilityClosed : F.compatibility

def FatouTheoremClosed (A : AdmissibleClass) (R : RadialLimitPackage) (N : NontangentialLimitPackage) (F : FatouTheoremPackage A R N) : Prop :=
  F.radialLimitClosed ∧ F.nontangentialLimitClosed ∧ F.compatibility

theorem fatou_theorem_closed_from_evidence (A : AdmissibleClass) (R : RadialLimitPackage) (N : NontangentialLimitPackage) (F : FatouTheoremPackage A R N) (E : FatouTheoremEvidence A R N F) :
    FatouTheoremClosed A R N F := by
  exact And.intro E.radialLimitClosedEvidence (And.intro E.nontangentialLimitClosedEvidence E.compatibilityClosed)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse