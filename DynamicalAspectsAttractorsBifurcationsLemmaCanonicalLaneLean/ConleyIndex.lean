import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure ConleyIndexPackage (Ω : PhaseSpace) where
  isolatingNeighborhood : Set Ω.carrier
  indexPair : Set Ω.carrier × Set Ω.carrier
  indexWellDefined : Prop
  continuationInvariant : Prop

structure ConleyIndexEvidence (Ω : PhaseSpace) (C : ConleyIndexPackage Ω) where
  indexWellDefinedClosed : C.indexWellDefined
  continuationInvariantClosed : C.continuationInvariant

def ConleyIndexClosed (Ω : PhaseSpace) (C : ConleyIndexPackage Ω) : Prop :=
  C.indexWellDefined ∧ C.continuationInvariant

theorem conley_index_closed_from_evidence (Ω : PhaseSpace) (C : ConleyIndexPackage Ω)
    (E : ConleyIndexEvidence Ω C) : ConleyIndexClosed Ω C := by
  exact And.intro E.indexWellDefinedClosed E.continuationInvariantClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse