import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.DiscontinuousGroupActions

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure FundamentalDomainPackage {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousGroupActionPackage G X) where
  domain : Set X
  coveringProperty : Prop
  pairwiseDisjointInterior : Prop
  measurableProperty : Prop
  boundaryMeasureZero : Prop

def FundamentalDomainClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (F : FundamentalDomainPackage D) : Prop :=
  F.coveringProperty ∧ F.pairwiseDisjointInterior ∧ F.measurableProperty ∧ F.boundaryMeasureZero

structure FundamentalDomainEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (F : FundamentalDomainPackage D) where
  coveringPropertyClosed : F.coveringProperty
  pairwiseDisjointInteriorClosed : F.pairwiseDisjointInterior
  measurablePropertyClosed : F.measurableProperty
  boundaryMeasureZeroClosed : F.boundaryMeasureZero

theorem fundamental_domain_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (F : FundamentalDomainPackage D)
    (E : FundamentalDomainEvidence F) : FundamentalDomainClosed F := by
  exact And.intro E.coveringPropertyClosed
    (And.intro E.pairwiseDisjointInteriorClosed
      (And.intro E.measurablePropertyClosed E.boundaryMeasureZeroClosed))

end HautevilleHouse
end HautevilleHouse