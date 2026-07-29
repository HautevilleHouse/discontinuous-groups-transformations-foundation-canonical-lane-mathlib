import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.DiscontinuousGroupActions

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure SelbergLemmaPackage {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousGroupActionPackage G X) where
  lattice : Subgroup G
  finiteVolumeQuotient : Prop
  eigenvalueGap : Prop
  spectralGapPositivity : Prop
  zetaFunctionRegular : Prop

structure SelbergLemmaEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (S : SelbergLemmaPackage D) where
  finiteVolumeQuotientClosed : S.finiteVolumeQuotient
  eigenvalueGapClosed : S.eigenvalueGap
  spectralGapPositivityClosed : S.spectralGapPositivity
  zetaFunctionRegularClosed : S.zetaFunctionRegular

def SelbergLemmaClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (S : SelbergLemmaPackage D) : Prop :=
  S.finiteVolumeQuotient ∧ S.eigenvalueGap ∧ S.spectralGapPositivity ∧ S.zetaFunctionRegular

theorem selberg_lemma_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (S : SelbergLemmaPackage D)
    (E : SelbergLemmaEvidence S) : SelbergLemmaClosed S := by
  exact And.intro E.finiteVolumeQuotientClosed
    (And.intro E.eigenvalueGapClosed
      (And.intro E.spectralGapPositivityClosed E.zetaFunctionRegularClosed))

end HautevilleHouse
end HautevilleHouse