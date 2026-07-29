import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.DynamicalSystemsPackage

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure CenterManifoldAnalysis {DS : DynamicalSystem} where
  centerSubspace : Submodule ℝ (DS.stateSpaceType)
  localInvariantManifold : Prop
  reducedDynamics : Prop
  bifurcationReduction : Prop

def CenterManifoldClosed {DS : DynamicalSystem} (C : CenterManifoldAnalysis DS) : Prop :=
  C.localInvariantManifold ∧ C.reducedDynamics ∧ C.bifurcationReduction

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse