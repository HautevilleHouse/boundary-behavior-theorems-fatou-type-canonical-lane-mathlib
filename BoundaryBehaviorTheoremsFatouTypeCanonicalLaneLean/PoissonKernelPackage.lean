import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure PoissonKernelPackage where
  kernelFunction : Type u
  positivity : Prop
  unitMass : Prop
  approximateIdentity : Prop

structure PoissonKernelEvidence (P : PoissonKernelPackage) where
  positivityClosed : P.positivity
  unitMassClosed : P.unitMass
  approximateIdentityClosed : P.approximateIdentity

def PoissonKernelClosed (P : PoissonKernelPackage) : Prop :=
  P.positivity ∧ P.unitMass ∧ P.approximateIdentity

theorem poisson_kernel_closed_from_evidence (P : PoissonKernelPackage)
    (E : PoissonKernelEvidence P) : PoissonKernelClosed P := by
  exact And.intro E.positivityClosed
    (And.intro E.unitMassClosed E.approximateIdentityClosed)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse