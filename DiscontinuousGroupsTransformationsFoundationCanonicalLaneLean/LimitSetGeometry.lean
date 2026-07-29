import DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.FuchsianGroupClassification

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure LimitSetPackage where
  group : Type u
  action : DiscontinuousGroupAction
  limitSet : Set (spaceType action)
  hausdorffDimension : ℝ
  conicalLimitPoints : Prop
  horosphericalLimitPoints : Prop

structure LimitSetEvidence (L : LimitSetPackage) where
  hausdorffDimensionComputed : L.hausdorffDimension > 0
  conicalLimitPointsClosed : L.conicalLimitPoints
  horosphericalLimitPointsClosed : L.horosphericalLimitPoints

def LimitSetGeometryClosed (L : LimitSetPackage) : Prop :=
  (L.hausdorffDimension > 0) ∧ L.conicalLimitPoints ∧ L.horosphericalLimitPoints

theorem limit_set_geometry_closed_from_evidence (L : LimitSetPackage) (E : LimitSetEvidence L) :
  LimitSetGeometryClosed L := by
  exact And.intro E.hausdorffDimensionComputed (And.intro E.conicalLimitPointsClosed E.horosphericalLimitPointsClosed)

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse