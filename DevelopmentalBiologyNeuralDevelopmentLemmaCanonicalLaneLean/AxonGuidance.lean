import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure AxonGuidancePackage where
  guidanceCues : Prop
  growthConeDynamics : Prop
  targetRecognition : Prop
  synapseFormation : Prop
  guidanceCuesTerm : guidanceCues
  growthConeDynamicsTerm : growthConeDynamics
  targetRecognitionTerm : targetRecognition
  synapseFormationTerm : synapseFormation

structure AxonGuidanceEvidence (A : AxonGuidancePackage) where
  guidanceCuesClosed : A.guidanceCues
  growthConeDynamicsClosed : A.growthConeDynamics
  targetRecognitionClosed : A.targetRecognition
  synapseFormationClosed : A.synapseFormation

def AxonGuidanceClosed (A : AxonGuidancePackage) : Prop :=
  A.guidanceCues ∧ A.growthConeDynamics ∧
  A.targetRecognition ∧ A.synapseFormation

theorem axon_guidance_closed_from_evidence (A : AxonGuidancePackage)
    (E : AxonGuidanceEvidence A) : AxonGuidanceClosed A := by
  exact And.intro E.guidanceCuesClosed
    (And.intro E.growthConeDynamicsClosed
      (And.intro E.targetRecognitionClosed E.synapseFormationClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse