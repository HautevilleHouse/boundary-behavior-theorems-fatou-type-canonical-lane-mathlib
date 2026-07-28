import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure FatouAdmittedObject where
  boundaryLimitExists : Prop

structure AdmissibleClass where
  object : FatouAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse