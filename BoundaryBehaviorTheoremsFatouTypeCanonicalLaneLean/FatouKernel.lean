import BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure FatouKernelPackage where
  kernel : Type u
  domain : Type v
  integrability : Prop
  convergenceToBoundary : Prop
  maximalFunctionEstimates : Prop

structure FatouKernelEvidence (F : FatouKernelPackage) where
  integrabilityClosed : F.integrability
  convergenceToBoundaryClosed : F.convergenceToBoundary
  maximalFunctionEstimatesClosed : F.maximalFunctionEstimates

def FatouKernelClosed (F : FatouKernelPackage) : Prop :=
  F.integrability ∧ F.convergenceToBoundary ∧ F.maximalFunctionEstimates

theorem fatou_kernel_closed_from_evidence (F : FatouKernelPackage)
    (E : FatouKernelEvidence F) : FatouKernelClosed F := by
  exact And.intro E.integrabilityClosed
    (And.intro E.convergenceToBoundaryClosed E.maximalFunctionEstimatesClosed)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse