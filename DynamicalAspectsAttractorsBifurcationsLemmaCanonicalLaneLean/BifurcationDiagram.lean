import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure BifurcationDiagramPackage where
  parameterSpace : Type u
  phasePortraits : Type v
  criticalParameterValues : Prop
  bifurcationPoints : Prop
  stabilityChange : Prop

structure BifurcationDiagramEvidence (B : BifurcationDiagramPackage) where
  criticalParameterValuesClosed : B.criticalParameterValues
  bifurcationPointsClosed : B.bifurcationPoints
  stabilityChangeClosed : B.stabilityChange

def BifurcationDiagramClosed (B : BifurcationDiagramPackage) : Prop :=
  B.criticalParameterValues ∧ B.bifurcationPoints ∧ B.stabilityChange

theorem bifurcation_diagram_closed_from_evidence (B : BifurcationDiagramPackage) (E : BifurcationDiagramEvidence B) :
    BifurcationDiagramClosed B := by
  exact And.intro E.criticalParameterValuesClosed (And.intro E.bifurcationPointsClosed E.stabilityChangeClosed)

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse
