// -------------------------------------------------------------------------------------------
// Supplementary prototype ConceptMap — Colorectal ESPBI colonoscopy Questionnaire → FHIR.
//
// Companion artefact to the JMIR Med Inform implementation-report revision (Section 3.8,
// Section 4.4 Lesson 2). Covers the clinically meaningful subset of linkIds in
// `questionnaire-colonoscopy-espbi` (the ESPBI colonoscopy form), mapping each to profile
// elements across ig-lt-colorectal and foundation IGs.
// Status: draft / experimental. Section headers, form-branching helpers, and pure UI labels
// (signature fields, examiner first/last name) are out of scope for this prototype.
// -------------------------------------------------------------------------------------------

Alias: $cm-rel = http://hl7.org/fhir/concept-map-relationship

CodeSystem: ColorectalColonoscopyQuestionnaireItem
Id: colorectal-colonoscopy-questionnaire-item
Title: "Colorectal colonoscopy ESPBI Questionnaire item (linkId)"
Description: "Stable linkId values for the ESPBI colonoscopy Questionnaire; source codes for the Colorectal ConceptMap prototype."
* ^url = "https://hl7.lt/fhir/colorectal/CodeSystem/colorectal-colonoscopy-questionnaire-item"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "HL7 Lithuania"
// basicInfo
* #basicInfo.procedureDate "Procedure date/time"
* #basicInfo.anesthesia "Anaesthesia used"
* #basicInfo.videoColonoscope "Video colonoscope used"
* #basicInfo.withdrawalTime "Withdrawal time (minutes)"
* #basicInfo.retroflexionRectum "Retroflexion in rectum performed"
* #basicInfo.previousAbdominalSurgery "Previous abdominal surgery flag"
// bowelPrep
* #bowelPrep.prepQuality "Bowel preparation quality"
* #bowelPrep.bbpsRight "BBPS right colon"
* #bowelPrep.bbpsTransverse "BBPS transverse colon"
* #bowelPrep.bbpsLeft "BBPS left colon"
* #bowelPrep.totalBbps "BBPS total score"
* #bowelPrep.prepMethod "Bowel preparation method"
* #bowelPrep.usedPreparations "Preparation substance used"
// scopeReach
* #scopeReach.reachLocation "Colonoscope reach location"
// polypFindings
* #polypFindings.polypFound "Polyp(s) detected"
* #polypFindings.location "Polyp location (colon segment)"
* #polypFindings.sizeMm "Polyp size (mm)"
* #polypFindings.parisClassification "Paris classification"
* #polypFindings.niceClassification "NICE classification"
* #polypFindings.predictedHistology "Predicted histology"
* #polypFindings.polypRemoved "Polyp removed"
* #polypFindings.removalMethod "Polyp removal method"
* #polypFindings.resectionType "Resection type"
* #polypFindings.sentForHistology "Sent for histology"
// tumorFindings
* #tumorFindings.tumorFound "Tumour detected"
* #tumorFindings.tumorLocation "Tumour location"
* #tumorFindings.biopsyPerformed "Biopsy performed"
// complications
* #complications.complicationPresence "Complication presence"
* #complications.complicationType "Complication type"
* #complications.wallInjury "Wall injury"
* #complications.bleedingControl "Bleeding control method"
// conclusions / recommendations
* #conclusions.conclusion "Conclusion code"
* #recommendations.nextColonoscopy "Recommended next colonoscopy"


CodeSystem: ColorectalFhirMappingTarget
Id: colorectal-fhir-mapping-target
Title: "Colorectal Questionnaire → FHIR mapping target"
Description: "Short identifiers for the FHIR profile / element combinations referenced by the Colorectal ConceptMap prototype."
* ^url = "https://hl7.lt/fhir/colorectal/CodeSystem/colorectal-fhir-mapping-target"
* ^version = "0.1.0"
* ^status = #draft
* ^experimental = true
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "HL7 Lithuania"
// foundation
* #encounter-period "EncounterLt.period (ig-lt-base)"
* #procedure-colonoscopy "ColonoscopyProcedureLtColorectal.performedPeriod"
// procedure / composition
* #colonoscopy-composition "ColonoscopyCompositionLtColorectal"
* #colonoscopy-report "ColonoscopyReportLtColorectal"
* #colonoscopy-conclusion "ColonoscopyConclusionLtColorectal"
// bowel prep
* #bowel-prep-quality "BowelPreparationQualityLtColorectal"
* #bowel-prep-score "ObservationLt — BBPS segment score"
* #bowel-prep-method "ObservationLt — preparation method"
* #bowel-prep-substance "ObservationLt — preparation substance"
// scope reach
* #scope-reach "ColonoscopeReachLtColorectal"
// polyps / tumours
* #polyp-observation "Observation — colon polyp (component-based)"
* #polyp-size "Observation.component size (mm)"
* #paris-classification "Observation.component Paris classification"
* #nice-classification "Observation.component NICE classification"
* #predicted-histology "Observation.component predicted histology"
* #polyp-removal "Procedure (polypectomy)"
* #polyp-histology "DiagnosticReportLt / HistologicalDiagnosisLtColorectal"
* #tumor-finding "TumorFindingLtColorectal"
// complications
* #complication-presence "ColonoscopyComplicationPresenceLtColorectal"
* #complication-type "ColonoscopyComplicationTypeLtColorectal"
* #wall-injury "ColonoscopyWallInjuryDetailLtColorectal"
* #bleeding-control "ColonoscopyBleedingControlLtColorectal"
// recommendations
* #recommendation-followup "CarePlanLt — next colonoscopy recommendation"


// -------------------------------------------------------------------------------------------
// ConceptMap — ESPBI colonoscopy Questionnaire → FHIR
// -------------------------------------------------------------------------------------------

Instance: conceptmap-colorectal-colonoscopy-questionnaire-to-fhir
InstanceOf: ConceptMap
Usage: #definition
Title: "ConceptMap: ESPBI colonoscopy Questionnaire → FHIR mapping (prototype)"
Description: "Maps clinically meaningful linkIds of the ESPBI colonoscopy Questionnaire to Colorectal / foundation profiles. Prototype skeleton supplied with the JMIR Med Inform implementation report."
* url = "https://hl7.lt/fhir/colorectal/ConceptMap/conceptmap-colorectal-colonoscopy-questionnaire-to-fhir"
* version = "0.1.0"
* name = "ColorectalColonoscopyQuestionnaireToFhir"
* title = "ESPBI colonoscopy Questionnaire items to FHIR mapping (prototype)"
* status = #draft
* experimental = true
* date = "2026-04-20"
* publisher = "HL7 Lithuania"
* jurisdiction = urn:iso:std:iso:3166#LT
* group.source = "https://hl7.lt/fhir/colorectal/CodeSystem/colorectal-colonoscopy-questionnaire-item"
* group.target = "https://hl7.lt/fhir/colorectal/CodeSystem/colorectal-fhir-mapping-target"

* group.element[0].code = #basicInfo.procedureDate
* group.element[0].display = "Procedure date/time"
* group.element[0].target[0].code = #procedure-colonoscopy
* group.element[0].target[0].relationship = $cm-rel#equivalent
* group.element[0].target[0].comment = "ColonoscopyProcedureLtColorectal.performedPeriod. StructureDefinition: https://hl7.lt/fhir/colorectal/StructureDefinition/colonoscopy-procedure-lt-colorectal."

* group.element[1].code = #basicInfo.anesthesia
* group.element[1].target[0].code = #procedure-colonoscopy
* group.element[1].target[0].relationship = $cm-rel#related-to
* group.element[1].target[0].comment = "ColonoscopyProcedureLtColorectal.extension (anaesthesia indicator); also referenced by colonoscopy-anesthesia-procedure example."

* group.element[2].code = #basicInfo.videoColonoscope
* group.element[2].target[0].code = #procedure-colonoscopy
* group.element[2].target[0].relationship = $cm-rel#related-to
* group.element[2].target[0].comment = "ColonoscopyProcedureLtColorectal.usedReference Device — video colonoscope flag."

* group.element[3].code = #basicInfo.withdrawalTime
* group.element[3].target[0].code = #procedure-colonoscopy
* group.element[3].target[0].relationship = $cm-rel#related-to
* group.element[3].target[0].comment = "ColonoscopyProcedureLtColorectal.extension[withdrawalTime] Quantity (minutes)."

* group.element[4].code = #basicInfo.retroflexionRectum
* group.element[4].target[0].code = #procedure-colonoscopy
* group.element[4].target[0].relationship = $cm-rel#related-to
* group.element[4].target[0].comment = "ColonoscopyProcedureLtColorectal.extension[retroflexionRectum] Boolean."

* group.element[5].code = #basicInfo.previousAbdominalSurgery
* group.element[5].target[0].code = #colonoscopy-composition
* group.element[5].target[0].relationship = $cm-rel#related-to
* group.element[5].target[0].comment = "ColonoscopyCompositionLtColorectal.section[history] — boolean flag for prior abdominal surgery (context for scope reach)."

* group.element[6].code = #bowelPrep.prepQuality
* group.element[6].target[0].code = #bowel-prep-quality
* group.element[6].target[0].relationship = $cm-rel#equivalent
* group.element[6].target[0].comment = "BowelPreparationQualityLtColorectal.valueCodeableConcept bound to bowel-preparation-quality-lt-colorectal."

* group.element[7].code = #bowelPrep.bbpsRight
* group.element[7].target[0].code = #bowel-prep-score
* group.element[7].target[0].relationship = $cm-rel#equivalent
* group.element[7].target[0].comment = "ObservationLt — BBPS right colon score bound to bowel-preparation-score-values-lt-colorectal."

* group.element[8].code = #bowelPrep.bbpsTransverse
* group.element[8].target[0].code = #bowel-prep-score
* group.element[8].target[0].relationship = $cm-rel#equivalent
* group.element[8].target[0].comment = "ObservationLt — BBPS transverse colon score."

* group.element[9].code = #bowelPrep.bbpsLeft
* group.element[9].target[0].code = #bowel-prep-score
* group.element[9].target[0].relationship = $cm-rel#equivalent
* group.element[9].target[0].comment = "ObservationLt — BBPS left colon score."

* group.element[10].code = #bowelPrep.totalBbps
* group.element[10].target[0].code = #bowel-prep-score
* group.element[10].target[0].relationship = $cm-rel#related-to
* group.element[10].target[0].comment = "ObservationLt — derived total BBPS (derivedFrom the three segment scores)."

* group.element[11].code = #bowelPrep.prepMethod
* group.element[11].target[0].code = #bowel-prep-method
* group.element[11].target[0].relationship = $cm-rel#equivalent
* group.element[11].target[0].comment = "ObservationLt — bowel preparation method bound to bowel-prep-method-lt-colorectal."

* group.element[12].code = #bowelPrep.usedPreparations
* group.element[12].target[0].code = #bowel-prep-substance
* group.element[12].target[0].relationship = $cm-rel#equivalent
* group.element[12].target[0].comment = "ObservationLt — preparation substance bound to bowel-preparation-substance-lt-colorectal."

* group.element[13].code = #scopeReach.reachLocation
* group.element[13].target[0].code = #scope-reach
* group.element[13].target[0].relationship = $cm-rel#equivalent
* group.element[13].target[0].comment = "ColonoscopeReachLtColorectal.valueCodeableConcept bound to colonoscope-reach-lt-colorectal."

* group.element[14].code = #polypFindings.polypFound
* group.element[14].target[0].code = #polyp-observation
* group.element[14].target[0].relationship = $cm-rel#equivalent
* group.element[14].target[0].comment = "Observation — colon polyp detection flag; zero-to-many Observations per polyp (see lab/examples-colon-polyps)."

* group.element[15].code = #polypFindings.location
* group.element[15].target[0].code = #polyp-observation
* group.element[15].target[0].relationship = $cm-rel#related-to
* group.element[15].target[0].comment = "Observation.bodySite bound to colon-segments-lt-colorectal / bowel-segments-lt-colorectal."

* group.element[16].code = #polypFindings.sizeMm
* group.element[16].target[0].code = #polyp-size
* group.element[16].target[0].relationship = $cm-rel#equivalent
* group.element[16].target[0].comment = "Observation.component[size] Quantity (mm)."

* group.element[17].code = #polypFindings.parisClassification
* group.element[17].target[0].code = #paris-classification
* group.element[17].target[0].relationship = $cm-rel#equivalent
* group.element[17].target[0].comment = "Observation.component[paris] bound to paris-classification-lt-colorectal."

* group.element[18].code = #polypFindings.niceClassification
* group.element[18].target[0].code = #nice-classification
* group.element[18].target[0].relationship = $cm-rel#equivalent
* group.element[18].target[0].comment = "Observation.component[nice] bound to nice-classification-lt-colorectal."

* group.element[19].code = #polypFindings.predictedHistology
* group.element[19].target[0].code = #predicted-histology
* group.element[19].target[0].relationship = $cm-rel#equivalent
* group.element[19].target[0].comment = "Observation.component[predictedHistology] bound to polyp-predicted-histology-lt-colorectal."

* group.element[20].code = #polypFindings.polypRemoved
* group.element[20].target[0].code = #polyp-removal
* group.element[20].target[0].relationship = $cm-rel#related-to
* group.element[20].target[0].comment = "Procedure (polypectomy); status=completed when removed, not-done otherwise."

* group.element[21].code = #polypFindings.removalMethod
* group.element[21].target[0].code = #polyp-removal
* group.element[21].target[0].relationship = $cm-rel#equivalent
* group.element[21].target[0].comment = "Procedure.code or extension bound to polypectomy-method-lt-colorectal."

* group.element[22].code = #polypFindings.resectionType
* group.element[22].target[0].code = #polyp-removal
* group.element[22].target[0].relationship = $cm-rel#related-to
* group.element[22].target[0].comment = "Procedure.extension bound to resection-type-lt-colorectal."

* group.element[23].code = #polypFindings.sentForHistology
* group.element[23].target[0].code = #polyp-histology
* group.element[23].target[0].relationship = $cm-rel#related-to
* group.element[23].target[0].comment = "Boolean flag; downstream HistologicalDiagnosisLtColorectal links back via DiagnosticReportLt.basedOn Procedure."

* group.element[24].code = #tumorFindings.tumorFound
* group.element[24].target[0].code = #tumor-finding
* group.element[24].target[0].relationship = $cm-rel#equivalent
* group.element[24].target[0].comment = "TumorFindingLtColorectal (presence flag)."

* group.element[25].code = #tumorFindings.tumorLocation
* group.element[25].target[0].code = #tumor-finding
* group.element[25].target[0].relationship = $cm-rel#related-to
* group.element[25].target[0].comment = "TumorFindingLtColorectal.bodySite bound to colon-segments-lt-colorectal."

* group.element[26].code = #tumorFindings.biopsyPerformed
* group.element[26].target[0].code = #tumor-finding
* group.element[26].target[0].relationship = $cm-rel#related-to
* group.element[26].target[0].comment = "Procedure (biopsy) linked to the TumorFindingLtColorectal via focus or basedOn."

* group.element[27].code = #complications.complicationPresence
* group.element[27].target[0].code = #complication-presence
* group.element[27].target[0].relationship = $cm-rel#equivalent
* group.element[27].target[0].comment = "ColonoscopyComplicationPresenceLtColorectal.valueBoolean."

* group.element[28].code = #complications.complicationType
* group.element[28].target[0].code = #complication-type
* group.element[28].target[0].relationship = $cm-rel#equivalent
* group.element[28].target[0].comment = "ColonoscopyComplicationTypeLtColorectal bound to colonoscopy-complication-type-lt-colorectal."

* group.element[29].code = #complications.wallInjury
* group.element[29].target[0].code = #wall-injury
* group.element[29].target[0].relationship = $cm-rel#equivalent
* group.element[29].target[0].comment = "ColonoscopyWallInjuryDetailLtColorectal.component[action] bound to colonoscopy-wall-injury-action-lt-colorectal."

* group.element[30].code = #complications.bleedingControl
* group.element[30].target[0].code = #bleeding-control
* group.element[30].target[0].relationship = $cm-rel#equivalent
* group.element[30].target[0].comment = "ColonoscopyBleedingControlLtColorectal bound to bleeding-control-method-lt-colorectal."

* group.element[31].code = #conclusions.conclusion
* group.element[31].target[0].code = #colonoscopy-conclusion
* group.element[31].target[0].relationship = $cm-rel#equivalent
* group.element[31].target[0].comment = "ColonoscopyConclusionLtColorectal bound to conclusions-lt-colorectal."

* group.element[32].code = #recommendations.nextColonoscopy
* group.element[32].target[0].code = #recommendation-followup
* group.element[32].target[0].relationship = $cm-rel#related-to
* group.element[32].target[0].comment = "CarePlanLt.activity.detail.scheduledTiming — next colonoscopy follow-up window."
