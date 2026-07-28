import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure BoundaryAdmittedObject where
  domain : Type u
  topology : TopologicalSpace domain
  boundaryPoint : domain
  analyticFunction : domain → ℂ
  harmonicCondition : Prop
  nonTangentialBoundaryLimit : Prop
  conclusion : nonTangentialBoundaryLimit

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse