import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeuralTubePatterningPackage where
  morphogenGradients : Prop
  dorsoventralDomains : Prop
  progenitorDomainSpecification : Prop
  cellTypeSpecification : Prop
  morphogenGradientsTerm : morphogenGradients
  dorsoventralDomainsTerm : dorsoventralDomains
  progenitorDomainSpecificationTerm : progenitorDomainSpecification
  cellTypeSpecificationTerm : cellTypeSpecification

structure NeuralTubePatterningEvidence (N : NeuralTubePatterningPackage) where
  morphogenGradientsClosed : N.morphogenGradients
  dorsoventralDomainsClosed : N.dorsoventralDomains
  progenitorDomainSpecificationClosed : N.progenitorDomainSpecification
  cellTypeSpecificationClosed : N.cellTypeSpecification

def NeuralTubePatterningClosed (N : NeuralTubePatterningPackage) : Prop :=
  N.morphogenGradients ∧ N.dorsoventralDomains ∧
  N.progenitorDomainSpecification ∧ N.cellTypeSpecification

theorem neural_tube_patterning_closed_from_evidence (N : NeuralTubePatterningPackage)
    (E : NeuralTubePatterningEvidence N) : NeuralTubePatterningClosed N := by
  exact And.intro E.morphogenGradientsClosed
    (And.intro E.dorsoventralDomainsClosed
      (And.intro E.progenitorDomainSpecificationClosed E.cellTypeSpecificationClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse