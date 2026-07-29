import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.PhaseSpaceFlow

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure AttractorStructure (F : PhaseSpaceFlow) where
  attractingSet : Set F.stateSpace
  invarianceUnderFlow : ∀ t, F.flowMap t '' attractingSet = attractingSet
  basinOfAttraction : Set F.stateSpace
  attracts : ∀ x ∈ basinOfAttraction, ∀ openNbhd, eventuallyEnter F x openNbhd
  asymptoticPhase : Prop

def eventuallyEnter (F : PhaseSpaceFlow) (x : F.stateSpace) (U : Set F.stateSpace) : Prop :=
  ∃ T, ∀ t ≥ T, F.flowMap t x ∈ U

structure AttractorEvidence {F : PhaseSpaceFlow} (A : AttractorStructure F) where
  invarianceUnderFlowClosed : A.invarianceUnderFlow
  attractsClosed : ∀ x ∈ A.basinOfAttraction, ∀ openNbhd, eventuallyEnter F x openNbhd
  asymptoticPhaseClosed : A.asymptoticPhase

def AttractorClosed {F : PhaseSpaceFlow} (A : AttractorStructure F) : Prop :=
  A.invarianceUnderFlow ∧ (∀ x ∈ A.basinOfAttraction, ∀ openNbhd, eventuallyEnter F x openNbhd) ∧ A.asymptoticPhase

theorem attractor_closed_from_evidence {F : PhaseSpaceFlow} (A : AttractorStructure F) (E : AttractorEvidence A) :
    AttractorClosed A :=
  ⟨E.invarianceUnderFlowClosed, E.attractsClosed, E.asymptoticPhaseClosed⟩

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse