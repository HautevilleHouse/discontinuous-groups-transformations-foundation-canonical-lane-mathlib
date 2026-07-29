import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure DiscreteGroupActionsPackage where
  group : Type u
  space : Type v
  action : group → space → space
  properlyDiscontinuous : Prop
  fundamentalDomain : Prop
  quotientSpace : Type w
  quotientSpaceStructure : Prop

structure DiscreteGroupActionsEvidence (D : DiscreteGroupActionsPackage) where
  properlyDiscontinuousClosed : D.properlyDiscontinuous
  fundamentalDomainClosed : D.fundamentalDomain
  quotientSpaceStructureClosed : D.quotientSpaceStructure

def DiscreteGroupActionsClosed (D : DiscreteGroupActionsPackage) : Prop :=
  D.properlyDiscontinuous ∧ D.fundamentalDomain ∧ D.quotientSpaceStructure

theorem discrete_group_actions_closed_from_evidence (D : DiscreteGroupActionsPackage) 
    (E : DiscreteGroupActionsEvidence D) : DiscreteGroupActionsClosed D := by
  exact And.intro E.properlyDiscontinuousClosed (And.intro E.fundamentalDomainClosed 
    E.quotientSpaceStructureClosed)

end HautevilleHouse
end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean