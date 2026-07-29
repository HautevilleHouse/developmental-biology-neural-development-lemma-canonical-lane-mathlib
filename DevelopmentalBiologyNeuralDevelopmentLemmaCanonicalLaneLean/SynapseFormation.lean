import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure SynapseFormationPackage where
  presynapticDifferentiation : Prop
  postsynapticDifferentiation : Prop
  synapticAdhesion : Prop
  neurotransmitterRelease : Prop
  receptorClustering : Prop

structure SynapseFormationEvidence (S : SynapseFormationPackage) where
  presynapticDifferentiationClosed : S.presynapticDifferentiation
  postsynapticDifferentiationClosed : S.postsynapticDifferentiation
  synapticAdhesionClosed : S.synapticAdhesion
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  receptorClusteringClosed : S.receptorClustering

def SynapseFormationClosed (S : SynapseFormationPackage) : Prop :=
  S.presynapticDifferentiation ∧ S.postsynapticDifferentiation ∧
  S.synapticAdhesion ∧ S.neurotransmitterRelease ∧ S.receptorClustering

theorem synapse_formation_closed_from_evidence
    (S : SynapseFormationPackage) (E : SynapseFormationEvidence S) :
    SynapseFormationClosed S := by
  exact And.intro E.presynapticDifferentiationClosed
    (And.intro E.postsynapticDifferentiationClosed
      (And.intro E.synapticAdhesionClosed
        (And.intro E.neurotransmitterReleaseClosed E.receptorClusteringClosed)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse