import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure MorseSmaleSystemPackage where
  manifold : Type u
  vectorField : manifold → TangentSpace manifold
  equilibriumSet : Finset (Point manifold)
  periodicOrbits : Finset (PeriodicOrbit manifold)
  transversalityCondition : Prop
  genericProperty : Prop

structure MorseSmaleSystemEvidence (M : MorseSmaleSystemPackage) where
  transversalityClosed : M.transversalityCondition
  genericityClosed : M.genericProperty

def MorseSmaleSystemClosed (M : MorseSmaleSystemPackage) : Prop :=
  M.transversalityCondition ∧ M.genericProperty

theorem morse_smale_system_closed_from_evidence (M : MorseSmaleSystemPackage) (E : MorseSmaleSystemEvidence M) : MorseSmaleSystemClosed M := by
  exact And.intro E.transversalityClosed E.genericityClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse