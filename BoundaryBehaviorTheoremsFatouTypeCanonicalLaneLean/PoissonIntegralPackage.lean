import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.HarmonicFunctionPackage

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure PoissonIntegralPackage {D : BoundaryDomainPackage}
    (H : HarmonicFunctionPackage D) where
  poissonKernel : D.boundaryManifold × D.domainManifold → ℝ
  integralRepresentation : ∀ (x : D.domainManifold), H.harmonicSpace x = ∫ᵇ (λ b : D.boundaryManifold, poissonKernel (b, x)) ∂μ
  boundaryMeasureDefined : Prop

structure PoissonIntegralEvidence {D : BoundaryDomainPackage}
    {H : HarmonicFunctionPackage D} (P : PoissonIntegralPackage H) where
  integralRepresentationClosed : P.integralRepresentation
  boundaryMeasureDefinedClosed : P.boundaryMeasureDefined

def PoissonIntegralClosed {D : BoundaryDomainPackage}
    {H : HarmonicFunctionPackage D} (P : PoissonIntegralPackage H) : Prop :=
  P.integralRepresentation ∧ P.boundaryMeasureDefined

theorem poisson_integral_closed_from_evidence
    {D : BoundaryDomainPackage} {H : HarmonicFunctionPackage D}
    (P : PoissonIntegralPackage H) (E : PoissonIntegralEvidence P) :
    PoissonIntegralClosed P := by
  exact And.intro E.integralRepresentationClosed E.boundaryMeasureDefinedClosed

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse