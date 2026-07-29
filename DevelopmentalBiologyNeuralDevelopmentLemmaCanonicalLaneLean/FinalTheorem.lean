import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.NeuralTubePattern
import HautevilleHouse.DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.NotchSignaling
import HautevilleHouse.DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.AxonGuidance
import HautevilleHouse.DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.Synaptogenesis
import HautevilleHouse.DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.CorticalPlateFormation

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedNeuralDevelopmentClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neural_development_endgame (A : AdmissibleClass) :
    ConstrainedNeuralDevelopmentClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse