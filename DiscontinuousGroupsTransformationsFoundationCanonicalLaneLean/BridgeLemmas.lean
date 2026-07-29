import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.quotientIsHausdorff ∧ A.object.quotientIsSecondCountable

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse