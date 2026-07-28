import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure MaximalFunctionPackage (A : AdmissibleClass) where
  underlyingFunction : A.object.function.functionValue
  maximalFunctionDefined : Prop
  weakTypeEstimate : Prop
  limiteRelation : Prop

structure MaximalFunctionEvidence (A : AdmissibleClass) (M : MaximalFunctionPackage A) where
  maximalFunctionDefinedClosed : M.maximalFunctionDefined
  weakTypeEstimateClosed : M.weakTypeEstimate
  limiteRelationClosed : M.limiteRelation

def MaximalFunctionClosed (A : AdmissibleClass) (M : MaximalFunctionPackage A) : Prop :=
  M.maximalFunctionDefined ∧ M.weakTypeEstimate ∧ M.limiteRelation

theorem maximal_function_closed_from_evidence (A : AdmissibleClass) (M : MaximalFunctionPackage A)
    (E : MaximalFunctionEvidence A M) : MaximalFunctionClosed A M := by
  exact And.intro E.maximalFunctionDefinedClosed
    (And.intro E.weakTypeEstimateClosed E.limiteRelationClosed)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse