import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean

structure LyapunovFunctionPackage where
  lyapunovFunction : Type u
  derivativeAlongFlow : Type v
  positiveDefiniteness : Prop
  negativeDerivative : Prop
  levelSetConfinement : Prop

structure LyapunovFunctionEvidence (L : LyapunovFunctionPackage) where
  positiveDefinitenessClosed : L.positiveDefiniteness
  negativeDerivativeClosed : L.negativeDerivative
  levelSetConfinementClosed : L.levelSetConfinement

def LyapunovFunctionClosed (L : LyapunovFunctionPackage) : Prop :=
  L.positiveDefiniteness ∧ L.negativeDerivative ∧ L.levelSetConfinement

theorem lyapunov_function_closed_from_evidence (L : LyapunovFunctionPackage) (E : LyapunovFunctionEvidence L) :
    LyapunovFunctionClosed L := by
  exact And.intro E.positiveDefinitenessClosed (And.intro E.negativeDerivativeClosed E.levelSetConfinementClosed)

end DynamicalAspectsAttractorsBifurcationsLemmaCanonicalLaneLean
end HautevilleHouse
