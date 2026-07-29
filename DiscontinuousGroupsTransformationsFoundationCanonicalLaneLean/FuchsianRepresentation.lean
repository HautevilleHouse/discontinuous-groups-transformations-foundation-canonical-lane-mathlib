import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure FuchsianRepresentationPackage where
  group : Type u
  representation : Type v
  discreteFaithful : Prop
  hyperbolicStructure : Prop
  limitSetAnalysis : Prop
  coCompactnessCondition : Prop

structure FuchsianRepresentationEvidence (F : FuchsianRepresentationPackage) where
  discreteFaithfulClosed : F.discreteFaithful
  hyperbolicStructureClosed : F.hyperbolicStructure
  limitSetAnalysisClosed : F.limitSetAnalysis
  coCompactnessConditionClosed : F.coCompactnessCondition

def FuchsianRepresentationClosed (F : FuchsianRepresentationPackage) : Prop :=
  F.discreteFaithful ∧ F.hyperbolicStructure ∧ F.limitSetAnalysis ∧ F.coCompactnessCondition

theorem fuchsian_representation_closed_from_evidence (F : FuchsianRepresentationPackage) 
    (E : FuchsianRepresentationEvidence F) : FuchsianRepresentationClosed F := by
  exact And.intro E.discreteFaithfulClosed (And.intro E.hyperbolicStructureClosed 
    (And.intro E.limitSetAnalysisClosed E.coCompactnessConditionClosed))

end HautevilleHouse
end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean