import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure CocycleStabilityPackage where
  cocycleProperty : Type u
  pullbackAttractor : Type v
  uniformityOnCompactSets : Prop
  upperSemicontinuity : Prop
  lowerSemicontinuity : Prop

structure CocycleStabilityEvidence (C : CocycleStabilityPackage) where
  uniformityOnCompactSetsClosed : C.uniformityOnCompactSets
  upperSemicontinuityClosed : C.upperSemicontinuity
  lowerSemicontinuityClosed : C.lowerSemicontinuity

def CocycleStabilityClosed (C : CocycleStabilityPackage) : Prop :=
  C.uniformityOnCompactSets ∧ C.upperSemicontinuity ∧ C.lowerSemicontinuity

theorem cocycle_stability_closed_from_evidence (C : CocycleStabilityPackage) (E : CocycleStabilityEvidence C) :
    CocycleStabilityClosed C := by
  exact And.intro E.uniformityOnCompactSetsClosed (And.intro E.upperSemicontinuityClosed E.lowerSemicontinuityClosed)

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse
