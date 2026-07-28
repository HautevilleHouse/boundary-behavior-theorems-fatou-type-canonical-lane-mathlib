import canonicalLaneMathlib.AdmissibleClass
import BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.BoundaryDomainPackage

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure HarmonicFunctionPackage (D : BoundaryDomainPackage) where
  harmonicSpace : D.domainManifold → ℝ
  meanValueProperty : Prop
  maximumPrinciple : Prop
  poissonRepresentation : Prop

structure HarmonicFunctionEvidence {D : BoundaryDomainPackage}
    (H : HarmonicFunctionPackage D) where
  meanValuePropertyClosed : H.meanValueProperty
  maximumPrincipleClosed : H.maximumPrinciple
  poissonRepresentationClosed : H.poissonRepresentation

def HarmonicFunctionClosed {D : BoundaryDomainPackage}
    (H : HarmonicFunctionPackage D) : Prop :=
  H.meanValueProperty ∧ H.maximumPrinciple ∧ H.poissonRepresentation

theorem harmonic_function_closed_from_evidence
    {D : BoundaryDomainPackage} (H : HarmonicFunctionPackage D)
    (E : HarmonicFunctionEvidence H) : HarmonicFunctionClosed H := by
  exact And.intro E.meanValuePropertyClosed
    (And.intro E.maximumPrincipleClosed E.poissonRepresentationClosed)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse