import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.PhaseSpaceFlow

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure CenterManifoldTheorem where
  fixedPoint : Point
  linearizationEigenvalues : Prop
  centerSubspace : Set Point
  localCenterManifold : Set Point
  invariance : Prop
  reductionPrinciple : Prop

def Point := Unit

structure CenterManifoldEvidence (C : CenterManifoldTheorem) where
  linearizationEigenvaluesClosed : C.linearizationEigenvalues
  invarianceClosed : C.invariance
  reductionPrincipleClosed : C.reductionPrinciple

def CenterManifoldClosed (C : CenterManifoldTheorem) : Prop :=
  C.linearizationEigenvalues ∧ C.invariance ∧ C.reductionPrinciple

theorem center_manifold_closed_from_evidence (C : CenterManifoldTheorem) (E : CenterManifoldEvidence C) :
    CenterManifoldClosed C :=
  ⟨E.linearizationEigenvaluesClosed, E.invarianceClosed, E.reductionPrincipleClosed⟩

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse