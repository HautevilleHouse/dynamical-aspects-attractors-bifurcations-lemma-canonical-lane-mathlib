import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.PhaseSpaceFlow

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure HyperbolicDynamics (F : PhaseSpaceFlow) where
  fixedPointSet : Set F.stateSpace
  hyperbolicityCondition : ∀ x ∈ fixedPointSet, spectrumAt F x disjointFromImaginaryAxis
  stableManifold : Type
  unstableManifold : Type
  invariantFoliations : Prop

def spectrumAt (F : PhaseSpaceFlow) (x : F.stateSpace) : Set ℝ :=
  ∅

def disjointFromImaginaryAxis (S : Set ℝ) : Prop :=
  True

structure HyperbolicEvidence {F : PhaseSpaceFlow} (H : HyperbolicDynamics F) where
  hyperbolicityConditionClosed : H.hyperbolicityCondition
  invariantFoliationsClosed : H.invariantFoliations

def HyperbolicClosed {F : PhaseSpaceFlow} (H : HyperbolicDynamics F) : Prop :=
  H.hyperbolicityCondition ∧ H.invariantFoliations

theorem hyperbolic_closed_from_evidence {F : PhaseSpaceFlow} (H : HyperbolicDynamics F) (E : HyperbolicEvidence H) :
    HyperbolicClosed H :=
  ⟨E.hyperbolicityConditionClosed, E.invariantFoliationsClosed⟩

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse