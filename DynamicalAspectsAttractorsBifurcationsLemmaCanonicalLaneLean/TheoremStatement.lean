import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure DynamicalAdmittedObject where
  dynamicalSystem : Type
  attractorSet : Type
  bifurcationParameter : Type
  lemmaConclusion : Prop
  conclusion : lemmaConclusion

def DynamicalWitnessClosed (O : DynamicalAdmittedObject) : Prop :=
  O.lemmaConclusion

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse