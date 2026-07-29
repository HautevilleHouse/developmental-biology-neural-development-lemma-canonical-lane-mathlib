import DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.NeurogenesisPackage

/-!
# Neural Development Lemma Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeuralDevelopmentLemmaPackage {P : SynapseFormationPDEPackage}
    (N : NeurogenesisPackage P) where
  circuitMaturation : Prop
  plasticityMechanism : Prop
  activityDependentRefinement : Prop

structure NeuralDevelopmentLemmaEvidence {P : SynapseFormationPDEPackage}
    {N : NeurogenesisPackage P} (L : NeuralDevelopmentLemmaPackage N) where
  circuitMaturationClosed : L.circuitMaturation
  plasticityMechanismClosed : L.plasticityMechanism
  activityDependentRefinementClosed : L.activityDependentRefinement

def NeuralDevelopmentLemmaClosed {P : SynapseFormationPDEPackage}
    {N : NeurogenesisPackage P} (L : NeuralDevelopmentLemmaPackage N) : Prop :=
  L.circuitMaturation ∧ L.plasticityMechanism ∧ L.activityDependentRefinement

theorem neural_development_lemma_closed_from_evidence
    {P : SynapseFormationPDEPackage} {N : NeurogenesisPackage P}
    (L : NeuralDevelopmentLemmaPackage N) (E : NeuralDevelopmentLemmaEvidence L) :
    NeuralDevelopmentLemmaClosed L := by
  exact And.intro E.circuitMaturationClosed
    (And.intro E.plasticityMechanismClosed E.activityDependentRefinementClosed)

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
