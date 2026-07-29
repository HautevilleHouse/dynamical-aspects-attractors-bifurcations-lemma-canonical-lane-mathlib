import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.DynamicalSystemsPackage

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure LyapunovFunctionLemma {DS : DynamicalSystem} where
  lyapunovFunction : DS.stateSpaceType → ℝ
  positiveDefinite : Prop
  derivativeAlongFlowNonPositive : Prop
  invariantSetCharacterization : Prop

def LyapunovClosed {DS : DynamicalSystem} (L : LyapunovFunctionLemma DS) : Prop :=
  L.positiveDefinite ∧ L.derivativeAlongFlowNonPositive ∧ L.invariantSetCharacterization

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse