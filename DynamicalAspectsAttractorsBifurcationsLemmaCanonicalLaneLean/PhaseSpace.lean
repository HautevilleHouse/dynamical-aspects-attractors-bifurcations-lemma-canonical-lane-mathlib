import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure PhaseSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  flow : carrier → ℝ → carrier
  flow_smooth : Prop

def phaseSpaceClosed (Ω : PhaseSpace) : Prop :=
  Ω.flow_smooth

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse