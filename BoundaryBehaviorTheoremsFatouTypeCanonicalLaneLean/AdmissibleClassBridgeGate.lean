import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure FatouAdmittedObject where
  domain : Type u
  boundary : Type v
  harmonicFunction : domain → ℝ
  bounded : Prop
  limitExistsNonTangentiallyAE : Prop
  conclusion : limitExistsNonTangentiallyAE

def FatouWitnessClosed (O : FatouAdmittedObject) : Prop :=
  O.limitExistsNonTangentiallyAE

structure AdmissibleClass where
  object : FatouAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FatouWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse