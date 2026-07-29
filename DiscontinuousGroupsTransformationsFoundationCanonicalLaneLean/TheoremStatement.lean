import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure DGTAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  discreteSubgroup : Prop
  properlyDiscontinuous : Prop
  fundamentalDomainCompact : Prop
  conclusion : discreteSubgroup ∧ properlyDiscontinuous ∧ fundamentalDomainCompact

def DGTWitnessClosed (O : DGTAdmittedObject) : Prop :=
  O.conclusion

structure DGTTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse