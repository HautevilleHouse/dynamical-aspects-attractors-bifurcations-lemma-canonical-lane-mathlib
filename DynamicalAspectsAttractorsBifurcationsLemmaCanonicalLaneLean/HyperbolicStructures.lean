import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure HyperbolicStructurePackage where
  invariantSet : Set ℝⁿ
  stableDistribution : Subbundle ℝⁿ
  unstableDistribution : Subbundle ℝⁿ
  exponentialContraction : Prop
  exponentialExpansion : Prop
  strongTransversality : Prop

structure HyperbolicStructureEvidence (H : HyperbolicStructurePackage) where
  contractionClosed : H.exponentialContraction
  expansionClosed : H.exponentialExpansion
  transversalityClosed : H.strongTransversality

def HyperbolicStructureClosed (H : HyperbolicStructurePackage) : Prop :=
  H.exponentialContraction ∧ H.exponentialExpansion ∧ H.strongTransversality

theorem hyperbolic_structure_closed_from_evidence (H : HyperbolicStructurePackage) (E : HyperbolicStructureEvidence H) : HyperbolicStructureClosed H := by
  exact And.intro E.contractionClosed (And.intro E.expansionClosed E.transversalityClosed)

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse