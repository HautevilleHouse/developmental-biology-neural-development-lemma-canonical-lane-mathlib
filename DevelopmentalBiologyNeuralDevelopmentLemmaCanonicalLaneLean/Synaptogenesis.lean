import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure SynaptogenesisPackage where
  presynapticAssembly : Prop
  postsynapticDifferentiation : Prop
  synapticCleavageFormation : Prop
  neurotransmitterRelease : Prop
  receptorClustering : Prop

structure SynaptogenesisEvidence (S : SynaptogenesisPackage) where
  presynapticAssemblyClosed : S.presynapticAssembly
  postsynapticDifferentiationClosed : S.postsynapticDifferentiation
  synapticCleavageFormationClosed : S.synapticCleavageFormation
  neurotransmitterReleaseClosed : S.neurotransmitterRelease
  receptorClusteringClosed : S.receptorClustering

def SynaptogenesisClosed (S : SynaptogenesisPackage) : Prop :=
  S.presynapticAssembly ∧ S.postsynapticDifferentiation ∧ S.synapticCleavageFormation ∧ S.neurotransmitterRelease ∧ S.receptorClustering

theorem synaptogenesis_closed_from_evidence (S : SynaptogenesisPackage) (E : SynaptogenesisEvidence S) :
    SynaptogenesisClosed S := by
  exact And.intro E.presynapticAssemblyClosed
    (And.intro E.postsynapticDifferentiationClosed
      (And.intro E.synapticCleavageFormationClosed
        (And.intro E.neurotransmitterReleaseClosed E.receptorClusteringClosed)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse