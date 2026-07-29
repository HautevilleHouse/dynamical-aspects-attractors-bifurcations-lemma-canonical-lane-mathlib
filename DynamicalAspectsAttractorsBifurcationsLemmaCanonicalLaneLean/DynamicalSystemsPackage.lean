import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure DynamicalSystem where
  stateSpaceType : Type u
  parameterDomain : Type v
  flow : parameterDomain → stateSpaceType → stateSpaceType
  flowContinuous : Prop
  initialConditionWellDefined : Prop
  flowGroupProperty : Prop

def DynamicalSystemClosed (DS : DynamicalSystem) : Prop :=
  DS.flowContinuous ∧ DS.initialConditionWellDefined ∧ DS.flowGroupProperty

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse