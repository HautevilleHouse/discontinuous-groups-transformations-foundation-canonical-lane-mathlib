import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure KleinianGroupClassificationPackage where
  group : Type u
  discontinuityDomain : Type v
  limitSet : Type w
  classificationCriteria : Prop
  elementaryClassification : Prop
  geometricallyFiniteClassification : Prop
  acylindricalClassification : Prop

structure KleinianGroupClassificationEvidence (K : KleinianGroupClassificationPackage) where
  classificationCriteriaClosed : K.classificationCriteria
  elementaryClassificationClosed : K.elementaryClassification
  geometricallyFiniteClassificationClosed : K.geometricallyFiniteClassification
  acylindricalClassificationClosed : K.acylindricalClassification

def KleinianGroupClassificationClosed (K : KleinianGroupClassificationPackage) : Prop :=
  K.classificationCriteria ∧ K.elementaryClassification ∧ K.geometricallyFiniteClassification ∧ K.acylindricalClassification

theorem kleinian_group_classification_closed_from_evidence (K : KleinianGroupClassificationPackage) 
    (E : KleinianGroupClassificationEvidence K) : KleinianGroupClassificationClosed K := by
  exact And.intro E.classificationCriteriaClosed (And.intro E.elementaryClassificationClosed 
    (And.intro E.geometricallyFiniteClassificationClosed E.acylindricalClassificationClosed))

end HautevilleHouse
end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean