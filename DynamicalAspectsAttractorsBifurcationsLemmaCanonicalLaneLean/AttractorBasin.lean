import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure AttractorBasinPackage where
  attractorSet : Type u
  basinSet : Type v
  attractorDynamics : Prop
  basinPreimages : Prop
  basinAttraction : Prop

structure AttractorBasinEvidence (A : AttractorBasinPackage) where
  attractorDynamicsClosed : A.attractorDynamics
  basinPreimagesClosed : A.basinPreimages
  basinAttractionClosed : A.basinAttraction

def AttractorBasinClosed (A : AttractorBasinPackage) : Prop :=
  A.attractorDynamics ∧ A.basinPreimages ∧ A.basinAttraction

theorem attractor_basin_closed_from_evidence (A : AttractorBasinPackage) (E : AttractorBasinEvidence A) :
    AttractorBasinClosed A := by
  exact And.intro E.attractorDynamicsClosed (And.intro E.basinPreimagesClosed E.basinAttractionClosed)

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse
