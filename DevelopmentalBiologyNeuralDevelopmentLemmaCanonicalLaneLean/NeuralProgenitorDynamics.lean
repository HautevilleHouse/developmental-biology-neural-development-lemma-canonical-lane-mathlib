import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeuralProgenitorDynamicsPackage where
  progenitorPopulation : Type u
  symmetricDivisionRate : Prop
  asymmetricDivisionRate : Prop
  differentiationRate : Prop
  apoptosisRate : Prop
  nicheSignals : Prop
  dynamicsClosed : Prop

structure NeuralProgenitorDynamicsEvidence (N : NeuralProgenitorDynamicsPackage) where
  symmetricDivisionRateClosed : N.symmetricDivisionRate
  asymmetricDivisionRateClosed : N.asymmetricDivisionRate
  differentiationRateClosed : N.differentiationRate
  apoptosisRateClosed : N.apoptosisRate
  nicheSignalsClosed : N.nicheSignals
  dynamicsClosedFromEvidence : N.dynamicsClosed

def NeuralProgenitorDynamicsClosed (N : NeuralProgenitorDynamicsPackage) : Prop :=
  N.symmetricDivisionRate ∧ N.asymmetricDivisionRate ∧
  N.differentiationRate ∧ N.apoptosisRate ∧
  N.nicheSignals ∧ N.dynamicsClosed

theorem neural_progenitor_dynamics_closed_from_evidence
    (N : NeuralProgenitorDynamicsPackage)
    (E : NeuralProgenitorDynamicsEvidence N) :
    NeuralProgenitorDynamicsClosed N := by
  exact And.intro E.symmetricDivisionRateClosed
    (And.intro E.asymmetricDivisionRateClosed
      (And.intro E.differentiationRateClosed
        (And.intro E.apoptosisRateClosed
          (And.intro E.nicheSignalsClosed E.dynamicsClosedFromEvidence))))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
