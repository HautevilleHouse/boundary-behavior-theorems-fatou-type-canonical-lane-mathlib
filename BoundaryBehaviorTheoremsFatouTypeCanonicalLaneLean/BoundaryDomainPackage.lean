import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure BoundaryDomainPackage where
  domainManifold : Type u
  boundaryManifold : Type v
  domainIsOpen : Prop
  boundaryIsSmooth : Prop
  poissonKernelDefined : Prop
  fatouDomainCondition : Prop

structure BoundaryDomainEvidence (D : BoundaryDomainPackage) where
  domainIsOpenClosed : D.domainIsOpen
  boundaryIsSmoothClosed : D.boundaryIsSmooth
  poissonKernelDefinedClosed : D.poissonKernelDefined
  fatouDomainConditionClosed : D.fatouDomainCondition

def BoundaryDomainClosed (D : BoundaryDomainPackage) : Prop :=
  D.domainIsOpen ∧ D.boundaryIsSmooth ∧ D.poissonKernelDefined ∧ D.fatouDomainCondition

theorem boundary_domain_closed_from_evidence
    (D : BoundaryDomainPackage) (E : BoundaryDomainEvidence D) :
    BoundaryDomainClosed D := by
  exact And.intro E.domainIsOpenClosed
    (And.intro E.boundaryIsSmoothClosed
      (And.intro E.poissonKernelDefinedClosed E.fatouDomainConditionClosed))

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse