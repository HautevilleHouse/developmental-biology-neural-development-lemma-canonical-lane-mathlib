import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeurogenesisRegulationPackage where
  proneuralGenes : Prop
  notchDeltaSignaling : Prop
  neurogenicWave : Prop
  cellCycleExit : Prop
  differentiationCommitment : Prop

structure NeurogenesisRegulationEvidence (N : NeurogenesisRegulationPackage) where
  proneuralGenesClosed : N.proneuralGenes
  notchDeltaSignalingClosed : N.notchDeltaSignaling
  neurogenicWaveClosed : N.neurogenicWave
  cellCycleExitClosed : N.cellCycleExit
  differentiationCommitmentClosed : N.differentiationCommitment

def NeurogenesisRegulationClosed (N : NeurogenesisRegulationPackage) : Prop :=
  N.proneuralGenes ∧ N.notchDeltaSignaling ∧
  N.neurogenicWave ∧ N.cellCycleExit ∧ N.differentiationCommitment

theorem neurogenesis_regulation_closed_from_evidence
    (N : NeurogenesisRegulationPackage) (E : NeurogenesisRegulationEvidence N) :
    NeurogenesisRegulationClosed N := by
  exact And.intro E.proneuralGenesClosed
    (And.intro E.notchDeltaSignalingClosed
      (And.intro E.neurogenicWaveClosed
        (And.intro E.cellCycleExitClosed E.differentiationCommitmentClosed)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse