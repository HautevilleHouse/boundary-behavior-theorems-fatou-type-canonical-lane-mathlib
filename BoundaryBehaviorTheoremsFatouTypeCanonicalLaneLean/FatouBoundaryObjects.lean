import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean

structure DomainWithBoundary where
  interior : Type u
  boundary : Type v
  interiorTopology : TopologicalSpace interior
  boundaryTopology : TopologicalSpace boundary
  embedding : interior → boundary

structure HolomorphicFunctionOnDomain (D : DomainWithBoundary) where
  codomain : Type w
  codomainTopology : TopologicalSpace codomain
  functionValue : D.interior → codomain
  holomorphic : Prop

structure BoundaryLimitPoint (D : DomainWithBoundary) where
  point : D.boundary
  approachRegion : Set (D.interior)
  nonTangential : Prop

structure FatouBoundaryObject where
  domain : DomainWithBoundary
  function : HolomorphicFunctionOnDomain domain
  boundaryPoint : BoundaryLimitPoint domain
  radialLimitExists : Prop
  nontangentialLimitExists : Prop
  conclusion : nontangentialLimitExists

def FatouWitnessClosed (O : FatouBoundaryObject) : Prop :=
  O.nontangentialLimitExists

end BoundaryBehaviorTheoremsFatouTypeCanonicalLaneLean
end HautevilleHouse