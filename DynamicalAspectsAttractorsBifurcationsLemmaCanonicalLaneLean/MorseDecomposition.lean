import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure MorseDecompositionPackage (Ω : PhaseSpace) where
  morseSets : List (Set Ω.carrier)
  ordering : Ω.carrier → Ω.carrier → Prop
  recurrenceFree : Prop
  chainRecurrentSetCovered : Prop

structure MorseDecompositionEvidence (Ω : PhaseSpace) (M : MorseDecompositionPackage Ω) where
  recurrenceFreeClosed : M.recurrenceFree
  chainRecurrentSetCoveredClosed : M.chainRecurrentSetCovered

def MorseDecompositionClosed (Ω : PhaseSpace) (M : MorseDecompositionPackage Ω) : Prop :=
  M.recurrenceFree ∧ M.chainRecurrentSetCovered

theorem morse_decomposition_closed_from_evidence (Ω : PhaseSpace) (M : MorseDecompositionPackage Ω)
    (E : MorseDecompositionEvidence Ω M) : MorseDecompositionClosed Ω M := by
  exact And.intro E.recurrenceFreeClosed E.chainRecurrentSetCoveredClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse