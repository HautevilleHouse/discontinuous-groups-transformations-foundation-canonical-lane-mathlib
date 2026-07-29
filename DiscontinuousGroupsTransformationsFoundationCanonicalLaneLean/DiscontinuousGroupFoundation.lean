import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure DiscontinuousGroup (X : Type u) where
  carrier : Set (X ≃ X)
  discreteTopology : Prop
  properlyDiscontinuousAction : Prop
  stabilizersFinite : Prop

structure DiscontinuousGroupAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  group : DiscontinuousGroup space
  orbifoldQuotient : Type u
  orbifoldQuotientTopology : TopologicalSpace orbifoldQuotient
  quotientIsHausdorff : Prop
  quotientIsSecondCountable : Prop
  conclusion : quotientIsHausdorff ∧ quotientIsSecondCountable

structure AdmissibleClass where
  object : DiscontinuousGroupAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.quotientIsHausdorff ∧ A.object.quotientIsSecondCountable) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse