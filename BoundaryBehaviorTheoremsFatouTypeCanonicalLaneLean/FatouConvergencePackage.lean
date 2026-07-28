import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.PoissonIntegralPackage

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure NontangentialApproachRegion (D : BoundaryDomainPackage) where
  apex : D.domainManifold
  aperture : ℝ
  region : Set D.domainManifold

structure FatouConvergencePackage {D : BoundaryDomainPackage}
    {H : HarmonicFunctionPackage D} {P : PoissonIntegralPackage H} where
  convergenceClass : Set (D.domainManifold → ℝ)
  nontangentialLimitAE : Prop
  boundedHarmonicLimit : Prop

structure FatouConvergenceEvidence {D : BoundaryDomainPackage}
    {H : HarmonicFunctionPackage D} {P : PoissonIntegralPackage H}
    (F : FatouConvergencePackage) where
  nontangentialLimitAEClosed : F.nontangentialLimitAE
  boundedHarmonicLimitClosed : F.boundedHarmonicLimit

def FatouConvergenceClosed {D : BoundaryDomainPackage}
    {H : HarmonicFunctionPackage D} {P : PoissonIntegralPackage H}
    (F : FatouConvergencePackage) : Prop :=
  F.nontangentialLimitAE ∧ F.boundedHarmonicLimit

theorem fatou_convergence_closed_from_evidence
    {D : BoundaryDomainPackage} {H : HarmonicFunctionPackage D}
    {P : PoissonIntegralPackage H} (F : FatouConvergencePackage)
    (E : FatouConvergenceEvidence F) : FatouConvergenceClosed F := by
  exact And.intro E.nontangentialLimitAEClosed E.boundedHarmonicLimitClosed

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse