import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeurogenesisPackage where
  proneuralGenes : Prop
  notchDeltaSignaling : Prop
  cellCycleExit : Prop
  neuronalDifferentiation : Prop
  proneuralGenesTerm : proneuralGenes
  notchDeltaSignalingTerm : notchDeltaSignaling
  cellCycleExitTerm : cellCycleExit
  neuronalDifferentiationTerm : neuronalDifferentiation

structure NeurogenesisEvidence (N : NeurogenesisPackage) where
  proneuralGenesClosed : N.proneuralGenes
  notchDeltaSignalingClosed : N.notchDeltaSignaling
  cellCycleExitClosed : N.cellCycleExit
  neuronalDifferentiationClosed : N.neuronalDifferentiation

def NeurogenesisClosed (N : NeurogenesisPackage) : Prop :=
  N.proneuralGenes ∧ N.notchDeltaSignaling ∧
  N.cellCycleExit ∧ N.neuronalDifferentiation

theorem neurogenesis_closed_from_evidence (N : NeurogenesisPackage)
    (E : NeurogenesisEvidence N) : NeurogenesisClosed N := by
  exact And.intro E.proneuralGenesClosed
    (And.intro E.notchDeltaSignalingClosed
      (And.intro E.cellCycleExitClosed E.neuronalDifferentiationClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse