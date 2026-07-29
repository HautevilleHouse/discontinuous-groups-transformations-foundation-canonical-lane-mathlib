import DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean.LimitSetGeometry

namespace HautevilleHouse
namespace DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean

structure PoincareSeriesPackage where
  group : Type u
  action : DiscontinuousGroupAction
  exponent : ℝ
  seriesConverges : Prop
  automorphicFormConstructed : Prop

structure PoincareSeriesEvidence (S : PoincareSeriesPackage) where
  seriesConvergesClosed : S.seriesConverges
  automorphicFormConstructedClosed : S.automorphicFormConstructed

def PoincareSeriesClosed (S : PoincareSeriesPackage) : Prop :=
  S.seriesConverges ∧ S.automorphicFormConstructed

theorem poincare_series_closed_from_evidence (S : PoincareSeriesPackage) (E : PoincareSeriesEvidence S) :
  PoincareSeriesClosed S := by
  exact And.intro E.seriesConvergesClosed E.automorphicFormConstructedClosed

end DiscontinuousGroupsTransformationsFoundationCanonicalLaneLean
end HautevilleHouse