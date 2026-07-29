import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure AttractorPackage (Ω : PhaseSpace) where
  attractorSet : Set Ω.carrier
  basinOfAttraction : Set Ω.carrier
  invarianceUnderFlow : Prop
  asymptoticStability : Prop

structure AttractorEvidence (Ω : PhaseSpace) (A : AttractorPackage Ω) where
  invarianceClosed : A.invarianceUnderFlow
  asymptoticStabilityClosed : A.asymptoticStability

def AttractorClosed (Ω : PhaseSpace) (A : AttractorPackage Ω) : Prop :=
  A.invarianceUnderFlow ∧ A.asymptoticStability

theorem attractor_closed_from_evidence (Ω : PhaseSpace) (A : AttractorPackage Ω)
    (E : AttractorEvidence Ω A) : AttractorClosed Ω A := by
  exact And.intro E.invarianceClosed E.asymptoticStabilityClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse