import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure HopfBifurcationPackage where
  equilibriumPoint : Type u
  eigenvalueCrossing : Prop
  periodicOrbitAppearance : Prop
  supercriticalCondition : Prop
  subcriticalCondition : Prop

structure HopfBifurcationEvidence (H : HopfBifurcationPackage) where
  eigenvalueCrossingClosed : H.eigenvalueCrossing
  periodicOrbitAppearanceClosed : H.periodicOrbitAppearance
  supercriticalConditionClosed : H.supercriticalCondition
  subcriticalConditionClosed : H.subcriticalCondition

def HopfBifurcationClosed (H : HopfBifurcationPackage) : Prop :=
  H.eigenvalueCrossing ∧ H.periodicOrbitAppearance ∧ H.supercriticalCondition ∧ H.subcriticalCondition

theorem hopf_bifurcation_closed_from_evidence (H : HopfBifurcationPackage) (E : HopfBifurcationEvidence H) :
    HopfBifurcationClosed H := by
  exact And.intro E.eigenvalueCrossingClosed (And.intro E.periodicOrbitAppearanceClosed (And.intro E.supercriticalConditionClosed E.subcriticalConditionClosed))

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse
