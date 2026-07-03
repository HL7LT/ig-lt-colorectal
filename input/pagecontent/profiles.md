### Profiles

This page lists all StructureDefinition profiles defined in this Implementation Guide.

#### Report & Composition

- [Colonoscopy Report](StructureDefinition-colonoscopy-report-lt-colorectal.html) -- overall colonoscopy screening report (parent: ImagingReportLt)
- [Colonoscopy Composition](StructureDefinition-colonoscopy-composition-lt-colorectal.html) -- colonoscopy screening episode composition linking all sections (parent: ImagingCompositionLt)

#### Procedures

- [Colonoscopy Procedure](StructureDefinition-colonoscopy-procedure-lt-colorectal.html) -- the colonoscopy procedure with anesthesia and indication details
- Polypectomy Procedure -- polyp removal procedure with method details
- [Colonoscopy Bleeding Control](StructureDefinition-colonoscopy-bleeding-control-lt-colorectal.html) -- bleeding control during colonoscopy

#### Observations -- Colonoscopy Findings

- [Colonoscope Reach](StructureDefinition-colonoscope-reach-lt-colorectal.html) -- how far the colonoscope reached
- [Bowel Preparation Quality](StructureDefinition-bowel-preparation-quality-lt-colorectal.html) -- Boston Bowel Preparation Scale assessment
- [Polyp Observation](StructureDefinition-observation-polyp-lt-colorectal.html) -- individual polyp with Paris/NICE classification, size, SMSA scoring
- [Tumor Finding](StructureDefinition-tumor-finding-lt-colorectal.html) -- tumor finding with location and biopsy status
- [Colonoscopy Conclusion](StructureDefinition-colonoscopy-conclusion-lt-colorectal.html) -- conclusion/diagnosis from colonoscopy

#### Observations -- Complications

- [Complication Presence](StructureDefinition-colonoscopy-complication-presence-lt-colorectal.html) -- whether a complication occurred
- [Complication Type](StructureDefinition-colonoscopy-complication-type-lt-colorectal.html) -- type of complication
- [Wall Injury Detail](StructureDefinition-colonoscopy-wall-injury-detail-lt-colorectal.html) -- Sydney classification and action taken

#### Observations -- FOBT & Pathology

- [Fecal Occult Blood Test Result](StructureDefinition-observation-fecal-occult-blood-test-result-lt-colorectal.html) -- fecal occult blood test result
- [Histological Diagnosis](StructureDefinition-histological-diagnosis-lt-colorectal.html) -- colorectal-specific histological diagnosis with dysplasia, budding, invasion, and MMRP components

#### Reused from LT Lab (not redefined here)

The following profiles from the [LT Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) are referenced but not redefined:

- PathologyReportLtLab -- pathology diagnostic report with ICD-10/ICD-O-3
- PathologyCompositionLtLab -- synoptic pathology document
- BiopsyProcedureLtLab -- biopsy procedure
- SpecimenLtLab / SpecimenBlockLtLab -- specimen tracking
- SpecimenAdequacyLtLab -- specimen quality assessment
- TumorObservableLtLab / TumorMeasurementLtLab -- detailed tumor characterization
