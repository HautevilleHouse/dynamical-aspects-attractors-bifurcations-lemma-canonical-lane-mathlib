import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure CenterManifoldPackage where
  system : ℝⁿ → ℝⁿ
  equilibriumPoint : ℝⁿ
  linearization : Matrix (Fin n) (Fin n) ℝ
  centerEigenvalues : ℕ
  reductionLocal : Prop
  existenceProof : Prop

structure CenterManifoldEvidence (C : CenterManifoldPackage) where
  reductionLocalClosed : C.reductionLocal
  existenceProofClosed : C.existenceProof

def CenterManifoldClosed (C : CenterManifoldPackage) : Prop :=
  C.reductionLocal ∧ C.existenceProof

theorem center_manifold_closed_from_evidence (C : CenterManifoldPackage) (E : CenterManifoldEvidence C) : CenterManifoldClosed C := by
  exact And.intro E.reductionLocalClosed E.existenceProofClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse