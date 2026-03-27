### Questionnaires

This page describes the ESPBI (Electronic Health Services and Cooperation Infrastructure) questionnaire forms used in the Lithuanian colorectal cancer screening programme.

#### Colonoscopy ESPBI Form

The [Colonoscopy ESPBI Questionnaire](Questionnaire-questionnaire-colonoscopy-espbi.html) captures the structured data collected during a colonoscopy procedure as part of the national colorectal cancer screening programme. It follows the ESPBI IS form structure defined by Lithuanian healthcare regulations.

##### Form Structure

The questionnaire is organized into the following groups:

| Group | Content | Maps to Profile |
|-------|---------|----------------|
| Basic Info | Procedure date, anesthesia, video colonoscope, withdrawal time | Procedure, Encounter |
| Bowel Preparation | Quality assessment, BBPS scoring by segment, dietary recommendations, split-dose, written info | [Bowel Preparation Quality examples](Observation-observation-bowel-prep-effective-example.html), [BBPS Left colon sample](Observation-observation-bbps-left-colon-example.html), [BBPS Transverse colon sample](Observation-observation-bbps-transverse-colon-example.html) |
| Colonoscope Reach | Furthest anatomical point reached | [ObservationColonoscopeReachLtColorectal](StructureDefinition-observation-colonoscope-reach-lt-colorectal.html) |
| Polyp Findings | Location, size, Paris/NICE classification, SMSA score, removal method | [Polyp examples](Observation-observation-polyp-found-example.html) |
| Tumor Findings | Location, description, biopsy status | [Tumor examples](Observation-observation-tumor-found-example.html) |
| Complications | Presence, type, wall injury (Sydney), bleeding control | [Complication profiles](StructureDefinition-observation-colonoscopy-complication-presence-lt-colorectal.html), [Wall Injury](StructureDefinition-observation-colonoscopy-wall-injury-detail-lt-colorectal.html) |
| Conclusions | Diagnostic conclusions | [Conclusion examples](Observation-observation-conclusion-normal-example.html) |
| Recommendations | Follow-up interval | CarePlan |

##### Narrative Mapping to FHIR Profiles

Each questionnaire item maps to structured FHIR resources:

- **Bowel preparation** → Observation instances documenting BBPS scores per segment and overall quality
- **Colonoscope reach** → [ObservationColonoscopeReachLtColorectal](StructureDefinition-observation-colonoscope-reach-lt-colorectal.html) with anatomical site from [ColonoscopeReachLtColorectalVS](ValueSet-colonoscope-reach-lt-colorectal.html)
- **Polyp findings** → Observation instances with Paris classification, NICE classification, SMSA scoring, and polypectomy details
- **Tumor findings** → Observation instances with anatomical location and biopsy status
- **Complications** → [Complication Presence](StructureDefinition-observation-colonoscopy-complication-presence-lt-colorectal.html), [Complication Type](StructureDefinition-observation-colonoscopy-complication-type-lt-colorectal.html), and [Wall Injury Detail](StructureDefinition-observation-colonoscopy-wall-injury-detail-lt-colorectal.html)

##### Cross-IG Integration

The questionnaire references clinical context from other Lithuanian FHIR IGs:

- **Lifestyle factors**: [Tobacco use](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-tobacco-use-lt-lifestyle.html), [Physical activity](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-physical-activity-lt-lifestyle.html) from the [Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)
- **Vital signs**: [BMI](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-bmi.html) from the [VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)

##### Examples

- [Colonoscopy ESPBI Questionnaire](Questionnaire-questionnaire-colonoscopy-espbi.html)
- [Colonoscopy ESPBI QuestionnaireResponse (example)](QuestionnaireResponse-questionnaireresponse-colonoscopy-espbi-example.html)
