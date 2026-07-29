import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure FundamentalDomainPackage where
  group : Type u
  topology : TopologicalSpace group
  action : group → Homeomorph (Fin 3 → ℝ) (Fin 3 → ℝ)
  fundamentalDomain : Set (Fin 3 → ℝ)
  tilingProperty : Prop
  measurable : Prop
  fundamentalDomainMeasurable : Prop

def FundamentalDomainClosed (F : FundamentalDomainPackage) : Prop :=
  F.tilingProperty ∧ F.fundamentalDomainMeasurable

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse
