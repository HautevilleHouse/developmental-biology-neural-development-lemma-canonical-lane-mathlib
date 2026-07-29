import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure AxonGuidanceSignalingPackage where
  growthCone : Type u
  chemotropicFactors : Prop
  ligandReceptorInteraction : Prop
  intracellularSignaling : Prop
  cytoskeletalDynamics : Prop
  guidanceDecision : Prop
  signalingClosed : Prop

structure AxonGuidanceSignalingEvidence (A : AxonGuidanceSignalingPackage) where
  chemotropicFactorsClosed : A.chemotropicFactors
  ligandReceptorInteractionClosed : A.ligandReceptorInteraction
  intracellularSignalingClosed : A.intracellularSignaling
  cytoskeletalDynamicsClosed : A.cytoskeletalDynamics
  guidanceDecisionClosed : A.guidanceDecision
  signalingClosedFromEvidence : A.signalingClosed

def AxonGuidanceSignalingClosed (A : AxonGuidanceSignalingPackage) : Prop :=
  A.chemotropicFactors ∧ A.ligandReceptorInteraction ∧
  A.intracellularSignaling ∧ A.cytoskeletalDynamics ∧
  A.guidanceDecision ∧ A.signalingClosed

theorem axon_guidance_signaling_closed_from_evidence
    (A : AxonGuidanceSignalingPackage)
    (E : AxonGuidanceSignalingEvidence A) :
    AxonGuidanceSignalingClosed A := by
  exact And.intro E.chemotropicFactorsClosed
    (And.intro E.ligandReceptorInteractionClosed
      (And.intro E.intracellularSignalingClosed
        (And.intro E.cytoskeletalDynamicsClosed
          (And.intro E.guidanceDecisionClosed E.signalingClosedFromEvidence))))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
