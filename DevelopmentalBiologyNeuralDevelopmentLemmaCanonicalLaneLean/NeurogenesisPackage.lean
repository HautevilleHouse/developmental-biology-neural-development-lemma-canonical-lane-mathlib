import DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.SynapseFormationPDE

/-!
# Neurogenesis Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeurogenesisPackage (P : SynapseFormationPDEPackage) where
  stemCellProliferation : Prop
  migrationGuided : Prop
  differentiationProgram : Prop
  integrationIntoNetwork : Prop

structure NeurogenesisEvidence (P : SynapseFormationPDEPackage) (N : NeurogenesisPackage P) where
  stemCellProliferationClosed : N.stemCellProliferation
  migrationGuidedClosed : N.migrationGuided
  differentiationProgramClosed : N.differentiationProgram
  integrationIntoNetworkClosed : N.integrationIntoNetwork

def NeurogenesisClosed (P : SynapseFormationPDEPackage) (N : NeurogenesisPackage P) : Prop :=
  N.stemCellProliferation ∧ N.migrationGuided ∧
  N.differentiationProgram ∧ N.integrationIntoNetwork

theorem neurogenesis_closed_from_evidence
    (P : SynapseFormationPDEPackage) (N : NeurogenesisPackage P)
    (E : NeurogenesisEvidence P N) : NeurogenesisClosed P N := by
  exact And.intro E.stemCellProliferationClosed
    (And.intro E.migrationGuidedClosed
      (And.intro E.differentiationProgramClosed E.integrationIntoNetworkClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
