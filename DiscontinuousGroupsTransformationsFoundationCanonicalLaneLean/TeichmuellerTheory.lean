import DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.PoincareSeries

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure TeichmuellerSpacePackage where
  surface : Type u
  group : Type v
  markedGroup : DiscontinuousGroupAction
  complexStructure : Prop
  universalCoverUniformization : Prop
  teichmuellerMetric : Prop

structure TeichmuellerSpaceEvidence (T : TeichmuellerSpacePackage) where
  complexStructureClosed : T.complexStructure
  universalCoverUniformizationClosed : T.universalCoverUniformization
  teichmuellerMetricClosed : T.teichmuellerMetric

def TeichmuellerSpaceClosed (T : TeichmuellerSpacePackage) : Prop :=
  T.complexStructure ∧ T.universalCoverUniformization ∧ T.teichmuellerMetric

theorem teichmueller_space_closed_from_evidence (T : TeichmuellerSpacePackage) (E : TeichmuellerSpaceEvidence T) :
  TeichmuellerSpaceClosed T := by
  exact And.intro E.complexStructureClosed (And.intro E.universalCoverUniformizationClosed E.teichmuellerMetricClosed)

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse