import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type u
  targetGenes : Type v
  regulatoryInteractions : Prop
  networkTopology : Prop
  geneExpressionDynamics : Prop

structure GeneRegulatoryNetworkEvidence (G : GeneRegulatoryNetworkPackage) where
  regulatoryInteractionsClosed : G.regulatoryInteractions
  networkTopologyClosed : G.networkTopology
  geneExpressionDynamicsClosed : G.geneExpressionDynamics

def GeneRegulatoryNetworkClosed (G : GeneRegulatoryNetworkPackage) : Prop :=
  G.regulatoryInteractions ∧ G.networkTopology ∧ G.geneExpressionDynamics

theorem gene_regulatory_network_closed_from_evidence
    (G : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence G) :
    GeneRegulatoryNetworkClosed G := by
  exact And.intro E.regulatoryInteractionsClosed
    (And.intro E.networkTopologyClosed E.geneExpressionDynamicsClosed)

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse