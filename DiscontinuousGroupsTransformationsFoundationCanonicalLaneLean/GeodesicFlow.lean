import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.DiscontinuousGroupActions

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure GeodesicFlowPackage {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousGroupActionPackage G X) where
  unitTangentBundle : Type w
  flowMap : ℝ → unitTangentBundle → unitTangentBundle
  geodesicCompleteness : Prop
  ergodicity : Prop
  mixingProperty : Prop
  entropyPositive : Prop

structure GeodesicFlowEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (F : GeodesicFlowPackage D) where
  geodesicCompletenessClosed : F.geodesicCompleteness
  ergodicityClosed : F.ergodicity
  mixingPropertyClosed : F.mixingProperty
  entropyPositiveClosed : F.entropyPositive

def GeodesicFlowClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (F : GeodesicFlowPackage D) : Prop :=
  F.geodesicCompleteness ∧ F.ergodicity ∧ F.mixingProperty ∧ F.entropyPositive

theorem geodesic_flow_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    {D : DiscontinuousGroupActionPackage G X} (F : GeodesicFlowPackage D)
    (E : GeodesicFlowEvidence F) : GeodesicFlowClosed F := by
  exact And.intro E.geodesicCompletenessClosed
    (And.intro E.ergodicityClosed
      (And.intro E.mixingPropertyClosed E.entropyPositiveClosed))

end HautevilleHouse
end HautevilleHouse