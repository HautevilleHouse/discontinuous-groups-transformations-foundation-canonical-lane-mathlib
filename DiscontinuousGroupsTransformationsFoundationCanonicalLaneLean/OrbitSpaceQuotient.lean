import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure OrbitSpaceQuotientPackage {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    (A : DiscontinuousGroupActionPackage G X) where
  quotientSpace : Type w
  quotientTopology : TopologicalSpace quotientSpace
  quotientMap : X → quotientSpace
  quotientMapContinuous : Prop
  quotientMapContinuousTerm : quotientMapContinuous

structure OrbitSpaceQuotientEvidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} (Q : OrbitSpaceQuotientPackage A) where
  quotientMapContinuousClosed : Q.quotientMapContinuous

def OrbitSpaceQuotientClosed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} (Q : OrbitSpaceQuotientPackage A) : Prop :=
  Q.quotientMapContinuous

theorem orbit_space_quotient_closed_from_evidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} (Q : OrbitSpaceQuotientPackage A)
    (E : OrbitSpaceQuotientEvidence Q) : OrbitSpaceQuotientClosed Q := by
  exact E.quotientMapContinuousClosed

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse