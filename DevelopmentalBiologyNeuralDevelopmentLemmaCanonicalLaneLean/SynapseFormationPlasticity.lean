import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure SynapseFormationPlasticityPackage where
  presynapticTerminal : Type u
  postsynapticDensity : Type v
  synaptogenicFactors : Prop
  neurotransmitterRelease : Prop
  receptorClustering : Prop
  activityDependentPlasticity : Prop
  synapseClosed : Prop

structure SynapseFormationPlasticityEvidence (S : SynapseFormationPlasticityPackage) where
  synaptogenicFactorsClosed : S.synaptogenicFactors
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  receptorClusteringClosed : S.receptorClustering
  activityDependentPlasticityClosed : S.activityDependentPlasticity
  synapseClosedFromEvidence : S.synapseClosed

def SynapseFormationPlasticityClosed (S : SynapseFormationPlasticityPackage) : Prop :=
  S.synaptogenicFactors ∧ S.neurotransmitterRelease ∧
  S.receptorClustering ∧ S.activityDependentPlasticity ∧
  S.synapseClosed

theorem synapse_formation_plasticity_closed_from_evidence
    (S : SynapseFormationPlasticityPackage)
    (E : SynapseFormationPlasticityEvidence S) :
    SynapseFormationPlasticityClosed S := by
  exact And.intro E.synaptogenicFactorsClosed
    (And.intro E.neurotransmitterReleaseClosed
      (And.intro E.receptorClusteringClosed
        (And.intro E.activityDependentPlasticityClosed
          E.synapseClosedFromEvidence)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse
