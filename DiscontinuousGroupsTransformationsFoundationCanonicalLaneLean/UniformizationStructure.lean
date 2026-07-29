import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure UniformizationPackage {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    (A : DiscontinuousGroupActionPackage G X) (F : FundamentalDomainPackage A)
    (Q : OrbitSpaceQuotientPackage A) where
  uniformizingMap : Q.quotientSpace → ℂ
  holomorphic : Prop
  properlyHolomorphic : Prop
  holomorphicTerm : holomorphic
  properlyHolomorphicTerm : properlyHolomorphic

structure UniformizationEvidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} {F : FundamentalDomainPackage A}
    {Q : OrbitSpaceQuotientPackage A} (U : UniformizationPackage A F Q) where
  holomorphicClosed : U.holomorphic
  properlyHolomorphicClosed : U.properlyHolomorphic

def UniformizationClosed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} {F : FundamentalDomainPackage A}
    {Q : OrbitSpaceQuotientPackage A} (U : UniformizationPackage A F Q) : Prop :=
  U.holomorphic ∧ U.properlyHolomorphic

theorem uniformization_closed_from_evidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} {F : FundamentalDomainPackage A}
    {Q : OrbitSpaceQuotientPackage A} (U : UniformizationPackage A F Q)
    (E : UniformizationEvidence U) : UniformizationClosed U := by
  exact And.intro E.holomorphicClosed E.properlyHolomorphicClosed

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse