import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure FatouObject where
  domain : Type u
  boundary : Type v
  harmonicFunction : Type w
  radialLimitExists : Prop
  boundaryValueMatches : Prop

structure AdmissibleClass where
  object : FatouObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FatouWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse