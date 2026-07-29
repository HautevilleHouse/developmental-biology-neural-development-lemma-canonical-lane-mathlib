import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NotchSignalingPackage where
  lateralInhibition : Prop
  proneuralGeneActivation : Prop
  deltaNotchInteraction : Prop
  neuroblastSelection : Prop

structure NotchSignalingEvidence (N : NotchSignalingPackage) where
  lateralInhibitionClosed : N.lateralInhibition
  proneuralGeneActivationClosed : N.proneuralGeneActivation
  deltaNotchInteractionClosed : N.deltaNotchInteraction
  neuroblastSelectionClosed : N.neuroblastSelection

def NotchSignalingClosed (N : NotchSignalingPackage) : Prop :=
  N.lateralInhibition ∧ N.proneuralGeneActivation ∧ N.deltaNotchInteraction ∧ N.neuroblastSelection

theorem notch_signaling_closed_from_evidence (N : NotchSignalingPackage) (E : NotchSignalingEvidence N) :
    NotchSignalingClosed N := by
  exact And.intro E.lateralInhibitionClosed
    (And.intro E.proneuralGeneActivationClosed
      (And.intro E.deltaNotchInteractionClosed E.neuroblastSelectionClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse