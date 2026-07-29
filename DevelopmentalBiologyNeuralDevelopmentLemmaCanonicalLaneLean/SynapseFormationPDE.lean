import DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean.NeuralAdmissibleClass

/-!
# Synapse Formation PDE Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure SynapseFormationPDEPackage where
  timeDomain : Type u
  synopticConcentration : timeDomain → Type v
  diffusionCoefficient : Prop
  reactionKinetics : Prop
  initialCondition : Prop

structure SynapseFormationPDEEvidence (P : SynapseFormationPDEPackage) where
  diffusionCoefficientClosed : P.diffusionCoefficient
  reactionKineticsClosed : P.reactionKinetics
  initialConditionClosed : P.initialCondition

def SynapseFormationPDEClosed (P : SynapseFormationPDEPackage) : Prop :=
  P.diffusionCoefficient ∧ P.reactionKinetics ∧ P.initialCondition

theorem synapse_formation_pde_closed_from_evidence
    (P : SynapseFormationPDEPackage) (E : SynapseFormationPDEEvidence P) :
    SynapseFormationPDEClosed P := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.reactionKineticsClosed E.initialConditionClosed)

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
