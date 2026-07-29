import canonicalLaneMathlib.AdmissibleClass

/-!
# Neurogenesis and Cell Cycle Regulation Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeurogenesisCellCyclePackage where
  progenitorProliferation : Prop
  cellCycleExit : Prop
  neuronalDifferentiation : Prop
  migrationGuidance : Prop

structure NeurogenesisCellCycleEvidence (N : NeurogenesisCellCyclePackage) where
  progenitorProliferationClosed : N.progenitorProliferation
  cellCycleExitClosed : N.cellCycleExit
  neuronalDifferentiationClosed : N.neuronalDifferentiation
  migrationGuidanceClosed : N.migrationGuidance

def NeurogenesisCellCycleClosed (N : NeurogenesisCellCyclePackage) : Prop :=
  N.progenitorProliferation ∧ N.cellCycleExit ∧ N.neuronalDifferentiation ∧ N.migrationGuidance

theorem neurogenesis_cell_cycle_closed_from_evidence (N : NeurogenesisCellCyclePackage) (E : NeurogenesisCellCycleEvidence N) :
    NeurogenesisCellCycleClosed N := by
  exact And.intro E.progenitorProliferationClosed
    (And.intro E.cellCycleExitClosed
      (And.intro E.neuronalDifferentiationClosed E.migrationGuidanceClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse