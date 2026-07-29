import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure ProperlyDiscontinuousPackage where
  group : Type u
  topologyGroup : TopologicalSpace group
  space : Type u
  topologySpace : TopologicalSpace space
  action : group → Homeomorph space space
  locallyFinite : Prop
  properness : Prop
  properlyDiscontinuous : Prop

def ProperlyDiscontinuousClosed (P : ProperlyDiscontinuousPackage) : Prop :=
  P.locallyFinite ∧ P.properness ∧ P.properlyDiscontinuous

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse
