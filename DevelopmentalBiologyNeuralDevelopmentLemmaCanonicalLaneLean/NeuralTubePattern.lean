import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeuralTubePatternPackage where
  dorsalVentralAxisFormation : Prop
  floorPlateInduction : Prop
  roofPlateSpecification : Prop
  motoneuronDomain : Prop
  interneuronSubtypes : Prop

structure NeuralTubePatternEvidence (P : NeuralTubePatternPackage) where
  dorsalVentralAxisFormationClosed : P.dorsalVentralAxisFormation
  floorPlateInductionClosed : P.floorPlateInduction
  roofPlateSpecificationClosed : P.roofPlateSpecification
  motoneuronDomainClosed : P.motoneuronDomain
  interneuronSubtypesClosed : P.interneuronSubtypes

def NeuralTubePatternClosed (P : NeuralTubePatternPackage) : Prop :=
  P.dorsalVentralAxisFormation ∧ P.floorPlateInduction ∧ P.roofPlateSpecification ∧ P.motoneuronDomain ∧ P.interneuronSubtypes

theorem neural_tube_pattern_closed_from_evidence (P : NeuralTubePatternPackage) (E : NeuralTubePatternEvidence P) :
    NeuralTubePatternClosed P := by
  exact And.intro E.dorsalVentralAxisFormationClosed
    (And.intro E.floorPlateInductionClosed
      (And.intro E.roofPlateSpecificationClosed
        (And.intro E.motoneuronDomainClosed E.interneuronSubtypesClosed)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse