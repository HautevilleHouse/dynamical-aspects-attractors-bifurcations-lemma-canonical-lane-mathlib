import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.BifurcationAnalysis

/-!
# Local Center Manifold Lemma Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure CenterManifoldInput {D : DynamicalSystem} where
  equilibrium : D.phaseSpace.carrier
  derivativeAtEquilibrium : LinearMap ℝ D.phaseSpace.carrier D.phaseSpace.carrier
  centerSubspace : Submodule ℝ D.phaseSpace.carrier
  hyperbolicSubspace : Submodule ℝ D.phaseSpace.carrier

structure CenterManifoldData {D : DynamicalSystem} (I : CenterManifoldInput D) where
  localInvariantManifold : Set D.phaseSpace.carrier
  tangentMatch : TangentSpaceAt I.equilibrium localInvariantManifold = I.centerSubspace
  flowInvariantUnderSmallTimes : ∃ δ > 0, ∀ t, |t| < δ →
    ∀ x ∈ localInvariantManifold, dist (D.flow (t, x), localInvariantManifold) = 0
  reductionToCenter : Prop

structure LocalCenterManifoldLemmaPackage {D : DynamicalSystem}
    (I : CenterManifoldInput D) where
  existenceOfCenterManifold : Prop
  uniqueness : Prop
  reducedDynamicsMatchesOriginal : Prop

def LocalCenterManifoldLemmaClosed {D : DynamicalSystem}
    (I : CenterManifoldInput D) (L : LocalCenterManifoldLemmaPackage I) : Prop :=
  L.existenceOfCenterManifold ∧ L.uniqueness ∧ L.reducedDynamicsMatchesOriginal

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse