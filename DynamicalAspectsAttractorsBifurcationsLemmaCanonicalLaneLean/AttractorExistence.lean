import canonicalLaneMathlib.AdmissibleClass

/-!
# Attractor Existence Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure PhaseSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DynamicalSystem where
  phaseSpace : PhaseSpace
  flow : ℝ × phaseSpace.carrier → phaseSpace.carrier
  continuousFlow : Continuous flow
  groupLaw : ∀ t s x, flow (t + s, x) = flow (t, flow (s, x))
  identityAtZero : ∀ x, flow (0, x) = x

structure AttractorConcept where
  invariantSet : Set (DynamicalSystem.phaseSpace.carrier)
  attractingBasin : Set (DynamicalSystem.phaseSpace.carrier)
  forwardInvariant : IsInvariant DynamicalSystem.flow invariantSet
  basinOpen : IsOpen attractingBasin
  attractsCompactSets : ∀ K : Set (DynamicalSystem.phaseSpace.carrier), IsCompact K → K ⊆ attractingBasin →
    ∀ ε > 0, ∃ T : ℝ, ∀ t ≥ T, ∀ x ∈ K, dist (DynamicalSystem.flow (t, x), invariantSet) < ε

structure AttractorExistencePackage (D : DynamicalSystem) where
  globalAttractorExists : Prop
  attractorCompact : Prop
  attractorInvariant : Prop
  basinCharacterization : Prop

def AttractorExistenceClosed (A : AttractorExistencePackage D) : Prop :=
  A.globalAttractorExists ∧ A.attractorCompact ∧ A.attractorInvariant ∧ A.basinCharacterization

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse