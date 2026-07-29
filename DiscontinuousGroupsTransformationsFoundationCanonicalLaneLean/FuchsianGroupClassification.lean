import DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.DiscontinuousGroupsAdmissibleClass

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure FuchsianGroupPackage where
  group : Type u
  action : DiscontinuousGroupAction
  genus : Nat
  signature : List (Nat × Bool × Bool)
  limitSetCantor : Prop

structure FuchsianGroupEvidence (F : FuchsianGroupPackage) where
  actionClosed : DiscontinuousGroupActionClosed F.action
  signatureCorrect : F.signature.length = 2 * F.genus
  limitSetCantorClosed : F.limitSetCantor

def FuchsianGroupClassificationClosed (F : FuchsianGroupPackage) : Prop :=
  DiscontinuousGroupActionClosed F.action ∧
  (F.signature.length = 2 * F.genus) ∧
  F.limitSetCantor

theorem fuchsian_group_classification_closed_from_evidence (F : FuchsianGroupPackage) (E : FuchsianGroupEvidence F) :
  FuchsianGroupClassificationClosed F := by
  exact And.intro E.actionClosed (And.intro E.signatureCorrect E.limitSetCantorClosed)

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse