import BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean.FatouKernel

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure HardySpacePackage (F : FatouKernelPackage) where
  spaceDefinition : Prop
  boundaryValuesDefined : Prop
  radialLimitsExist : Prop
  nonTangentialLimitsExist : Prop

structure HardySpaceEvidence {F : FatouKernelPackage} (H : HardySpacePackage F) where
  spaceDefinitionClosed : H.spaceDefinition
  boundaryValuesDefinedClosed : H.boundaryValuesDefined
  radialLimitsExistClosed : H.radialLimitsExist
  nonTangentialLimitsExistClosed : H.nonTangentialLimitsExist

def HardySpaceClosed {F : FatouKernelPackage} (H : HardySpacePackage F) : Prop :=
  H.spaceDefinition ∧ H.boundaryValuesDefined ∧ H.radialLimitsExist ∧ H.nonTangentialLimitsExist

theorem hardy_space_closed_from_evidence {F : FatouKernelPackage}
    (H : HardySpacePackage F) (E : HardySpaceEvidence H) : HardySpaceClosed H := by
  exact And.intro E.spaceDefinitionClosed
    (And.intro E.boundaryValuesDefinedClosed
      (And.intro E.radialLimitsExistClosed E.nonTangentialLimitsExistClosed))

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse