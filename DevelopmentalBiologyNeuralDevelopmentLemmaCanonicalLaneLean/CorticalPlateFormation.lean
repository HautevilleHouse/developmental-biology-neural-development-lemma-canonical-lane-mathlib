import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean

structure CorticalPlateFormationPackage where
  radialGlialMigration : Prop
  layerSpecification : Prop
  subplateNeurons : Prop
  corticalLamination : Prop
  arealization : Prop

structure CorticalPlateFormationEvidence (C : CorticalPlateFormationPackage) where
  radialGlialMigrationClosed : C.radialGlialMigration
  layerSpecificationClosed : C.layerSpecification
  subplateNeuronsClosed : C.subplateNeurons
  corticalLaminationClosed : C.corticalLamination
  arealizationClosed : C.arealization

def CorticalPlateFormationClosed (C : CorticalPlateFormationPackage) : Prop :=
  C.radialGlialMigration ∧ C.layerSpecification ∧ C.subplateNeurons ∧ C.corticalLamination ∧ C.arealization

theorem cortical_plate_formation_closed_from_evidence (C : CorticalPlateFormationPackage) (E : CorticalPlateFormationEvidence C) :
    CorticalPlateFormationClosed C := by
  exact And.intro E.radialGlialMigrationClosed
    (And.intro E.layerSpecificationClosed
      (And.intro E.subplateNeuronsClosed
        (And.intro E.corticalLaminationClosed E.arealizationClosed)))

end DevelopmentalBiologyNeuralDevelopmentLemmaCanonicalLaneLean
end HautevilleHouse