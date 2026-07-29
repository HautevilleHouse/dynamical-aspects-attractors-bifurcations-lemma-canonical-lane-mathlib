import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure LyapunovExponentPackage where
  dynamicalSystem : (ℝ → ℝⁿ) → (ℝ → ℝⁿ)
  orbit : ℝ → ℝⁿ
  exponents : List ℝ
  multiplicativeErgodicTheorem : Prop
  limitExists : Prop

structure LyapunovExponentEvidence (L : LyapunovExponentPackage) where
  ergodicTheoremClosed : L.multiplicativeErgodicTheorem
  limitExistsClosed : L.limitExists

def LyapunovExponentClosed (L : LyapunovExponentPackage) : Prop :=
  L.multiplicativeErgodicTheorem ∧ L.limitExists

theorem lyapunov_exponent_closed_from_evidence (L : LyapunovExponentPackage) (E : LyapunovExponentEvidence L) : LyapunovExponentClosed L := by
  exact And.intro E.ergodicTheoremClosed E.limitExistsClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse