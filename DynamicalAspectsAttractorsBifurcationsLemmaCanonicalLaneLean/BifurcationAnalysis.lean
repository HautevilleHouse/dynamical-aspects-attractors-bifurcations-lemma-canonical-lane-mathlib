import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.AttractorExistence

/-!
# Bifurcation Analysis Package
-/

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure ParameterSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure BifurcationData (D : DynamicalSystem) (P : ParameterSpace) where
  parameter : P.carrier
  parameterFamily : P.carrier → DynamicalSystem
  bifurcationPoint : P.carrier
  topologicalChange : Prop
  genericPoint : Prop

structure BifurcationAnalysisPackage {D : DynamicalSystem} {P : ParameterSpace}
    (B : BifurcationData D P) where
  criticalityCondition : Prop
  normalFormDerived : Prop
  stabilityChange : Prop
  bifurcationDiagramComputed : Prop

def BifurcationAnalysisClosed {D : DynamicalSystem} {P : ParameterSpace}
    (B : BifurcationData D P) (A : BifurcationAnalysisPackage B) : Prop :=
  A.criticalityCondition ∧ A.normalFormDerived ∧ A.stabilityChange ∧ A.bifurcationDiagramComputed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse