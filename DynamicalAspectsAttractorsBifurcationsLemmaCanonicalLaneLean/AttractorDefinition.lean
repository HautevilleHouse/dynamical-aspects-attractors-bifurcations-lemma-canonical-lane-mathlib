import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.DynamicalSystemsPackage

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure AttractorDefinition {DS : DynamicalSystem} where
  attractingSet : Set (DS.stateSpaceType)
  invarianceUnderFlow : Prop
  basinOfAttraction : Set (DS.stateSpaceType)
  asymptoticAttraction : Prop
  topologicalMinimality : Prop

def AttractorClosed {DS : DynamicalSystem} (A : AttractorDefinition DS) : Prop :=
  A.invarianceUnderFlow ∧ A.asymptoticAttraction ∧ A.topologicalMinimality

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse