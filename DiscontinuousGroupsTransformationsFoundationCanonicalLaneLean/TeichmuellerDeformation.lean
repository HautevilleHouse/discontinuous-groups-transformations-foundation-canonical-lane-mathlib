import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure TeichmuellerDeformationPackage {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    (A : DiscontinuousGroupActionPackage G X) (F : FundamentalDomainPackage A)
    (Q : OrbitSpaceQuotientPackage A) (U : UniformizationPackage A F Q) where
  deformationSpace : Type w
  complexStructure : Type z
  quasiconformalEquivalence : Prop
  quasiconformalEquivalenceTerm : quasiconformalEquivalence

structure TeichmuellerDeformationEvidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} {F : FundamentalDomainPackage A}
    {Q : OrbitSpaceQuotientPackage A} {U : UniformizationPackage A F Q}
    (T : TeichmuellerDeformationPackage A F Q U) where
  quasiconformalEquivalenceClosed : T.quasiconformalEquivalence

def TeichmuellerDeformationClosed {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} {F : FundamentalDomainPackage A}
    {Q : OrbitSpaceQuotientPackage A} {U : UniformizationPackage A F Q}
    (T : TeichmuellerDeformationPackage A F Q U) : Prop :=
  T.quasiconformalEquivalence

theorem teichmueller_deformation_closed_from_evidence {G : Type u} {X : Type v} [Group G] [TopologicalSpace X]
    {A : DiscontinuousGroupActionPackage G X} {F : FundamentalDomainPackage A}
    {Q : OrbitSpaceQuotientPackage A} {U : UniformizationPackage A F Q}
    (T : TeichmuellerDeformationPackage A F Q U)
    (E : TeichmuellerDeformationEvidence T) : TeichmuellerDeformationClosed T := by
  exact E.quasiconformalEquivalenceClosed

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse