import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure PhaseSpaceFlow where
  stateSpace : Type u
  timeDomain : Type v
  flowMap : timeDomain → stateSpace → stateSpace
  groupProperty : ∀ t s x, flowMap (t + s) x = flowMap t (flowMap s x)
  identityProperty : flowMap 0 = id
  continuousDependence : Prop

theorem flow_group_property (F : PhaseSpaceFlow) : ∀ t s x, F.flowMap (t + s) x = F.flowMap t (F.flowMap s x) :=
  F.groupProperty

structure PhaseSpaceFlowEvidence (F : PhaseSpaceFlow) where
  continuousDependenceClosed : F.continuousDependence

def PhaseSpaceFlowClosed (F : PhaseSpaceFlow) : Prop :=
  F.continuousDependence

theorem phase_space_flow_closed_from_evidence (F : PhaseSpaceFlow) (E : PhaseSpaceFlowEvidence F) :
    PhaseSpaceFlowClosed F :=
  E.continuousDependenceClosed

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse