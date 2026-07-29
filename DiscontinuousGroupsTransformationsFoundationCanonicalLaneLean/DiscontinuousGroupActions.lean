import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure DiscontinuousGroupActionPackage (G : Type u) (X : Type v) [TopologicalSpace X] [Group G] where
  action : G → X → X
  properlyDiscontinuous : Prop
  freeAction : Prop
  orbitSpace : Type w
  orbitSpaceTopology : TopologicalSpace orbitSpace
  quotientMap : X → orbitSpace
  continuousAction : Prop
  hausdorffOrbitSpace : Prop

structure DiscontinuousGroupActionEvidence {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousGroupActionPackage G X) where
  properlyDiscontinuousClosed : D.properlyDiscontinuous
  freeActionClosed : D.freeAction
  continuousActionClosed : D.continuousAction
  hausdorffOrbitSpaceClosed : D.hausdorffOrbitSpace

def DiscontinuousGroupActionClosed {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousGroupActionPackage G X) : Prop :=
  D.properlyDiscontinuous ∧ D.freeAction ∧ D.continuousAction ∧ D.hausdorffOrbitSpace

theorem discontinuous_group_action_closed_from_evidence
    {G : Type u} {X : Type v} [TopologicalSpace X] [Group G]
    (D : DiscontinuousGroupActionPackage G X) (E : DiscontinuousGroupActionEvidence D) :
    DiscontinuousGroupActionClosed D := by
  exact And.intro E.properlyDiscontinuousClosed
    (And.intro E.freeActionClosed
      (And.intro E.continuousActionClosed E.hausdorffOrbitSpaceClosed))

end HautevilleHouse
end HautevilleHouse