import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure AttractorStructurePackage where
  phaseSpace : Type u
  dynamics : phaseSpace → phaseSpace
  attractorSet : Set phaseSpace
  invariance : ∀ x ∈ attractorSet, dynamics x ∈ attractorSet
  attractingBasin : Set phaseSpace
  asymptoticStability : ∀ x ∈ attractingBasin, filter.Tendsto (λ n : ℕ => (dynamics^[n]) x) filter.atTop (nhdsSet attractorSet)

structure AttractorStructureEvidence (A : AttractorStructurePackage) where
  invarianceClosed : A.invariance
  stabilityClosed : A.asymptoticStability

def AttractorStructureClosed (A : AttractorStructurePackage) : Prop :=
  A.invariance ∧ A.asymptoticStability

theorem attractor_structure_closed_from_evidence (A : AttractorStructurePackage) (E : AttractorStructureEvidence A) : AttractorStructureClosed A := by
  exact And.intro E.invarianceClosed E.stabilityClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse