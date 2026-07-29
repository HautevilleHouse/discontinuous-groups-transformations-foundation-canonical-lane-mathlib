import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure DGAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  group : Type v
  groupStructure : Group group
  action : group → space → space
  properlyDiscontinuous : Prop
  freeAction : Prop
  conclusion : properlyDiscontinuous ∧ freeAction

structure AdmissibleClass where
  object : DGAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.properlyDiscontinuous ∧ A.object.freeAction) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse
end HautevilleHouse