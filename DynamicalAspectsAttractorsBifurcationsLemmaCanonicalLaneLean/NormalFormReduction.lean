import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean.CenterManifoldTheorem

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure NormalFormReduction where
  coordinateChange : Type
  polynomialNormalForm : Prop
  resonantTerms : Prop
  truncatedOrder : Nat
  formalConjugacy : Prop

structure NormalFormEvidence (N : NormalFormReduction) where
  polynomialNormalFormClosed : N.polynomialNormalForm
  resonantTermsClosed : N.resonantTerms
  formalConjugacyClosed : N.formalConjugacy

def NormalFormClosed (N : NormalFormReduction) : Prop :=
  N.polynomialNormalForm ∧ N.resonantTerms ∧ N.formalConjugacy

theorem normal_form_closed_from_evidence (N : NormalFormReduction) (E : NormalFormEvidence N) :
    NormalFormClosed N :=
  ⟨E.polynomialNormalFormClosed, E.resonantTermsClosed, E.formalConjugacyClosed⟩

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse