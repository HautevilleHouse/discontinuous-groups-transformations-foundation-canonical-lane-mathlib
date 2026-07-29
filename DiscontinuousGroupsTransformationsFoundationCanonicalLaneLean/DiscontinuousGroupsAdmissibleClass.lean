import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure DiscontinuousGroupAction where
  group : Type u
  space : Type v
  action : group → space → space
  properlyDiscontinuous : Prop
  fixedPointFree : Prop

def DiscontinuousGroupActionClosed (A : DiscontinuousGroupAction) : Prop :=
  A.properlyDiscontinuous ∧ A.fixedPointFree

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse