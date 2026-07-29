import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Patterning Core Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure NeuralPatterningCorePackage where
  morphogenGradient : Prop
  transcriptionNetwork : Prop
  progenitorPools : Prop
  regionalSpecification : Prop

structure NeuralPatterningEvidence (C : NeuralPatterningCorePackage) where
  morphogenGradientClosed : C.morphogenGradient
  transcriptionNetworkClosed : C.transcriptionNetwork
  progenitorPoolsClosed : C.progenitorPools
  regionalSpecificationClosed : C.regionalSpecification

def NeuralPatterningClosed (C : NeuralPatterningCorePackage) : Prop :=
  C.morphogenGradient ∧ C.transcriptionNetwork ∧ C.progenitorPools ∧ C.regionalSpecification

theorem neural_patterning_closed_from_evidence (C : NeuralPatterningCorePackage) (E : NeuralPatterningEvidence C) :
    NeuralPatterningClosed C := by
  exact And.intro E.morphogenGradientClosed
    (And.intro E.transcriptionNetworkClosed
      (And.intro E.progenitorPoolsClosed E.regionalSpecificationClosed))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse