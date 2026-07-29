import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeuralTubeFormationPackage where
  neuralPlateSpecification : Prop
  convergentExtensionMovement : Prop
  apicalConstriction : Prop
  hingePointFormation : Prop
  tubeClosure : Prop

structure NeuralTubeFormationEvidence (N : NeuralTubeFormationPackage) where
  neuralPlateSpecificationClosed : N.neuralPlateSpecification
  convergentExtensionMovementClosed : N.convergentExtensionMovement
  apicalConstrictionClosed : N.apicalConstriction
  hingePointFormationClosed : N.hingePointFormation
  tubeClosureClosed : N.tubeClosure

def NeuralTubeFormationClosed (N : NeuralTubeFormationPackage) : Prop :=
  N.neuralPlateSpecification ∧ N.convergentExtensionMovement ∧
  N.apicalConstriction ∧ N.hingePointFormation ∧ N.tubeClosure

theorem neural_tube_formation_closed_from_evidence
    (N : NeuralTubeFormationPackage) (E : NeuralTubeFormationEvidence N) :
    NeuralTubeFormationClosed N := by
  exact And.intro E.neuralPlateSpecificationClosed
    (And.intro E.convergentExtensionMovementClosed
      (And.intro E.apicalConstrictionClosed
        (And.intro E.hingePointFormationClosed E.tubeClosureClosed)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse