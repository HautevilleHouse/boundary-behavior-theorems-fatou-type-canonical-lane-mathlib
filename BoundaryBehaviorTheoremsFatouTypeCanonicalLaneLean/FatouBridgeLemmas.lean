import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FatouWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse