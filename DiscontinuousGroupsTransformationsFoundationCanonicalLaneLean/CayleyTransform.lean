import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure CayleyTransform (G : Type u) [Group G] where
  sourceModel : Type v
  targetModel : Type w
  transformMap : sourceModel → targetModel
  admissibleCondition : Prop
  fixedPointAnalysis : Prop
  transformMapClosed : transformMap ∈ (sourceModel → targetModel)

structure CayleyTransformEvidence (G : Type u) [Group G] (C : CayleyTransform G) where
  admissibleConditionClosed : C.admissibleCondition
  fixedPointAnalysisClosed : C.fixedPointAnalysis

def CayleyTransformClosed (G : Type u) [Group G] (C : CayleyTransform G) : Prop :=
  C.admissibleCondition ∧ C.fixedPointAnalysis

theorem cayley_transform_closed_from_evidence (G : Type u) [Group G] 
    (C : CayleyTransform G) (E : CayleyTransformEvidence G C) : CayleyTransformClosed G C := by
  exact And.intro E.admissibleConditionClosed E.fixedPointAnalysisClosed

end HautevilleHouse
end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean