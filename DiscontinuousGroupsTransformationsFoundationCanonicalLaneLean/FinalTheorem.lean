import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

def ConstrainedDiscontinuousGroupClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_discontinuous_group_endgame (A : AdmissibleClass) :
    ConstrainedDiscontinuousGroupClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse