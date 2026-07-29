import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure TeichmullerSpacePackage where
  group : Type u
  topology : TopologicalSpace group
  representationVariety : Type v
  teichmullerSpace : Type w
  markedRiemannSurfaceStructure : Prop
  mappingClassGroupAction : Prop
  topologicalType : Prop

def TeichmullerSpaceClosed (T : TeichmullerSpacePackage) : Prop :=
  T.markedRiemannSurfaceStructure ∧ T.mappingClassGroupAction ∧ T.topologicalType

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse
