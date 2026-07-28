import BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.HardySpaceTheory

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure MaximalFunctionPackage {F : FatouKernelPackage} {H : HardySpacePackage F} where
  maximalOperator : Prop
  weakTypeEstimate : Prop
  strongTypeEstimate : Prop
  applicationToBoundaryConvergence : Prop

structure MaximalFunctionEvidence {F : FatouKernelPackage} {H : HardySpacePackage F}
    (M : MaximalFunctionPackage F H) where
  maximalOperatorClosed : M.maximalOperator
  weakTypeEstimateClosed : M.weakTypeEstimate
  strongTypeEstimateClosed : M.strongTypeEstimate
  applicationToBoundaryConvergenceClosed : M.applicationToBoundaryConvergence

def MaximalFunctionClosed {F : FatouKernelPackage} {H : HardySpacePackage F}
    (M : MaximalFunctionPackage F H) : Prop :=
  M.maximalOperator ∧ M.weakTypeEstimate ∧ M.strongTypeEstimate ∧ M.applicationToBoundaryConvergence

theorem maximal_function_closed_from_evidence {F : FatouKernelPackage}
    {H : HardySpacePackage F} (M : MaximalFunctionPackage F H)
    (E : MaximalFunctionEvidence M) : MaximalFunctionClosed M := by
  exact And.intro E.maximalOperatorClosed
    (And.intro E.weakTypeEstimateClosed
      (And.intro E.strongTypeEstimateClosed E.applicationToBoundaryConvergenceClosed))

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse