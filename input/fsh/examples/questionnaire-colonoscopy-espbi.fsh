// ══════════════════════════════════════════════════════════════════════════
// Narrative mapping -- Questionnaire items -> FHIR profiles/examples
// ══════════════════════════════════════════════════════════════════════════
// Group 1 (basicInfo)       -> Patient (PatientLt), Encounter
// Group 2 (bowelPrep)       -> Observation (BowelPreparationQuality examples)
//   bbpsScoring             -> Observation (Boston Bowel Prep Scale examples)
//   dietaryRecommendations  -> Observation (dietary-recommendations examples)
//   splitDose               -> Observation (split-dose examples)
//   writtenInfo             -> Observation (written-information examples)
// Group 3 (scopeReach)      -> ObservationColonoscopeReachLtColorectal
//   See: ColonoscopeReachLtColorectalVS
// Group 4 (polypFindings)   -> Observation (colon-polyps examples)
//   location               -> ColorectalAnatomyLtColorectalVS
//   Paris classification   -> Paris endoscopic classification
//   NICE classification    -> NICE classification (Type I-III)
//   SMSA score             -> SMSA polypectomy difficulty
//   predicted histology    -> hyperplastic, SSL, adenoma
// Group 5 (tumorFindings)   -> Observation (tumor examples)
// Group 6 (complications)   -> ObservationColonoscopyComplicationPresenceLtColorectal
//                           -> ObservationColonoscopyComplicationTypeLtColorectal
//                           -> ObservationColonoscopyWallInjuryDetailLtColorectal
// Group 7 (conclusions)     -> Observation (conclusions examples)
// Group 8 (recommendations) -> CarePlan / text
// Group 9 (signatures)      -> Practitioner
// See also:
//   https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/ (tobacco, nutrition)
//   https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/ (BMI, blood pressure)
// ══════════════════════════════════════════════════════════════════════════

Instance: questionnaire-colonoscopy-espbi
InstanceOf: Questionnaire
Usage: #definition
Title: "Questionnaire: ESPBI Colonoscopy Form"
Description: "ESPBI form for colonoscopy in the Lithuanian colorectal cancer screening programme."
* url = "https://hl7.lt/fhir/colorectal/Questionnaire/questionnaire-colonoscopy-espbi"
* version = "0.0.1"
* name = "QuestionnaireColonoscopyEspbi"
* title = "ESPBI Colonoscopy Form"
* status = #active
* date = "2026-03-25"
* publisher = "HL7 Lithuania"
* subjectType = #Patient

// ────────────────────────────────────────────────────────────────────────
// Group 1: Basic descriptive part
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "basicInfo"
* item[=].text = "Basic descriptive part"
* item[=].type = #group

* item[=].item[+].linkId = "basicInfo.postponedColonoscopy"
* item[=].item[=].text = "Was colonoscopy postponed for screening?"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "basicInfo.anesthesia"
* item[=].item[=].text = "Anesthesia"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#398166005 "Performed"
* item[=].item[=].answerOption[+].valueCoding = $sct#385660001 "Not done"

* item[=].item[+].linkId = "basicInfo.videoColonoscope"
* item[=].item[=].text = "Video colonoscope used?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "basicInfo.withdrawalTime"
* item[=].item[=].text = "Withdrawal time (minutes)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "basicInfo.procedureDate"
* item[=].item[=].text = "Procedure date"
* item[=].item[=].type = #dateTime

// ────────────────────────────────────────────────────────────────────────
// Group 2: Bowel preparation assessment
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "bowelPrep"
* item[=].text = "Bowel preparation assessment"
* item[=].type = #group

* item[=].item[+].linkId = "bowelPrep.prepQuality"
* item[=].item[=].text = "Bowel preparation quality adequate?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "bowelPrep.bbpsRight"
* item[=].item[=].text = "BBPS Right colon / ascending (0-3)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "bowelPrep.bbpsTransverse"
* item[=].item[=].text = "BBPS Transverse colon (0-3)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "bowelPrep.bbpsLeft"
* item[=].item[=].text = "BBPS Left colon / descending + sigmoid (0-3)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "bowelPrep.totalBbps"
* item[=].item[=].text = "Total BBPS score (0-9)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "bowelPrep.dietaryRecommendations"
* item[=].item[=].text = "Were dietary recommendations given?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "bowelPrep.splitDose"
* item[=].item[=].text = "Was split-dose protocol used?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "bowelPrep.writtenInfo"
* item[=].item[=].text = "Was written information about preparation given?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "bowelPrep.usedPreparations"
* item[=].item[=].text = "Used preparations for bowel preparation"
* item[=].item[=].type = #coding
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[+].valueCoding = $sct#712567003 "Macrogol 4000 (substance)"
* item[=].item[=].answerOption[+].valueCoding = $sct#712566007 "Macrogol 3350 (substance)"
* item[=].item[=].answerOption[+].valueCoding = $sct#715699009 "Product containing citric acid and magnesium oxide and sodium picosulfate (medicinal product)"
* item[=].item[=].answerOption[+].valueCoding = $sct#69958001 "Sodium sulfate (substance)"

// ────────────────────────────────────────────────────────────────────────
// Group 3: Colonoscope reach
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "scopeReach"
* item[=].text = "Colonoscope reach"
* item[=].type = #group

* item[=].item[+].linkId = "scopeReach.reachLocation"
* item[=].item[=].text = "Deepest point reached by colonoscope"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#34402009 "Rectum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#60184004 "Sigmoid colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#32622004 "Descending colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#72592005 "Splenic flexure structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#485005 "Transverse colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#48338005 "Hepatic flexure structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#9040008 "Ascending colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#32713005 "Cecum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#34516001 "Ileum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#85774003 "Terminal ileum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#181261002 "Entire large intestine"

// ────────────────────────────────────────────────────────────────────────
// Group 4: Polyp findings (repeating)
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "polypFindings"
* item[=].text = "Polyp findings"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "polypFindings.polypFound"
* item[=].item[=].text = "Polyp found?"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "polypFindings.location"
* item[=].item[=].text = "Polyp location"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#34402009 "Rectum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#60184004 "Sigmoid colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#32622004 "Descending colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#72592005 "Splenic flexure structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#485005 "Transverse colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#48338005 "Hepatic flexure structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#9040008 "Ascending colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#32713005 "Cecum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#85774003 "Terminal ileum structure"

* item[=].item[+].linkId = "polypFindings.sizeMm"
* item[=].item[=].text = "Polyp size (mm)"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "polypFindings.parisClassification"
* item[=].item[=].text = "Paris endoscopic classification"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "I-p Pedunculated"
* item[=].item[=].answerOption[+].valueCoding.display = "I-sp Semi-pedunculated"
* item[=].item[=].answerOption[+].valueCoding.display = "I-s Sessile"
* item[=].item[=].answerOption[+].valueCoding.display = "IIa Slightly elevated"
* item[=].item[=].answerOption[+].valueCoding.display = "IIb Flat"
* item[=].item[=].answerOption[+].valueCoding.display = "IIc Slightly depressed"
* item[=].item[=].answerOption[+].valueCoding.display = "III Excavated"
* item[=].item[=].answerOption[+].valueCoding.display = "LST-G Granular laterally spreading"
* item[=].item[=].answerOption[+].valueCoding.display = "LST-NG Non-granular laterally spreading"

* item[=].item[+].linkId = "polypFindings.niceClassification"
* item[=].item[=].text = "NICE classification"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "Type I (Hyperplastic)"
* item[=].item[=].answerOption[+].valueCoding.display = "Type II (Adenoma)"
* item[=].item[=].answerOption[+].valueCoding.display = "Type III (Invasive)"

* item[=].item[+].linkId = "polypFindings.predictedHistology"
* item[=].item[=].text = "Predicted histology"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "Hyperplastic"
* item[=].item[=].answerOption[+].valueCoding.display = "Sessile serrated lesion (SSL)"
* item[=].item[=].answerOption[+].valueCoding.display = "Adenoma"
* item[=].item[=].answerOption[+].valueCoding.display = "Adenoma with suspicion of malignancy"

* item[=].item[+].linkId = "polypFindings.locationSide"
* item[=].item[=].text = "Location side"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "Left side"
* item[=].item[=].answerOption[+].valueCoding.display = "Right side"

* item[=].item[+].linkId = "polypFindings.accessDifficulty"
* item[=].item[=].text = "Access difficulty"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "Easy"
* item[=].item[=].answerOption[+].valueCoding.display = "Difficult"

* item[=].item[+].linkId = "polypFindings.smsaScore"
* item[=].item[=].text = "SMSA total score"
* item[=].item[=].type = #integer

* item[=].item[+].linkId = "polypFindings.smsaLevel"
* item[=].item[=].text = "SMSA level"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "Level 1 (4-5 points)"
* item[=].item[=].answerOption[+].valueCoding.display = "Level 2 (6-8 points)"
* item[=].item[=].answerOption[+].valueCoding.display = "Level 3 (9-12 points)"
* item[=].item[=].answerOption[+].valueCoding.display = "Level 4 (>12 points)"

* item[=].item[+].linkId = "polypFindings.polypRemoved"
* item[=].item[=].text = "Was polyp removed?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "polypFindings.removalMethod"
* item[=].item[=].text = "Removal method"
* item[=].item[=].type = #coding
* item[=].item[=].enableWhen[+].question = "polypFindings.polypRemoved"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "Cold forceps"
* item[=].item[=].answerOption[+].valueCoding.display = "Cold snare"
* item[=].item[=].answerOption[+].valueCoding.display = "Hot snare"
* item[=].item[=].answerOption[+].valueCoding.display = "EMR"
* item[=].item[=].answerOption[+].valueCoding.display = "ESD"
* item[=].item[=].answerOption[+].valueCoding.display = "Piecemeal EMR"

* item[=].item[+].linkId = "polypFindings.complicationAfterRemoval"
* item[=].item[=].text = "Complication after polyp removal?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "polypFindings.allPolypsRemovedSimultaneously"
* item[=].item[=].text = "All polyps removed simultaneously?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "polypFindings.sentForHistology"
* item[=].item[=].text = "Sent for histological examination?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

// ────────────────────────────────────────────────────────────────────────
// Group 5: Tumor findings (repeating)
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "tumorFindings"
* item[=].text = "Tumor findings"
* item[=].type = #group
* item[=].repeats = true

* item[=].item[+].linkId = "tumorFindings.tumorFound"
* item[=].item[=].text = "Tumor found?"
* item[=].item[=].type = #boolean

* item[=].item[+].linkId = "tumorFindings.tumorLocation"
* item[=].item[=].text = "Tumor location"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#34402009 "Rectum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#60184004 "Sigmoid colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#32622004 "Descending colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#72592005 "Splenic flexure structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#485005 "Transverse colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#48338005 "Hepatic flexure structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#9040008 "Ascending colon structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#32713005 "Cecum structure"
* item[=].item[=].answerOption[+].valueCoding = $sct#85774003 "Terminal ileum structure"

* item[=].item[+].linkId = "tumorFindings.tumorDescription"
* item[=].item[=].text = "Tumor description"
* item[=].item[=].type = #text

* item[=].item[+].linkId = "tumorFindings.biopsyPerformed"
* item[=].item[=].text = "Biopsy performed?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "tumorFindings.biopsyPostponed"
* item[=].item[=].text = "Biopsy postponed?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

// ────────────────────────────────────────────────────────────────────────
// Group 6: Complications after colonoscopy
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "complications"
* item[=].text = "Complications after colonoscopy"
* item[=].type = #group

* item[=].item[+].linkId = "complications.complicationPresence"
* item[=].item[=].text = "Were there complications?"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "complications.complicationType"
* item[=].item[=].text = "Complication type"
* item[=].item[=].type = #coding
* item[=].item[=].enableWhen[+].question = "complications.complicationPresence"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "Perforation"
* item[=].item[=].answerOption[+].valueCoding.display = "Bleeding"
* item[=].item[=].answerOption[+].valueCoding.display = "Post-polypectomy syndrome"
* item[=].item[=].answerOption[+].valueCoding.display = "Cardiopulmonary"
* item[=].item[=].answerOption[+].valueCoding.display = "Other"

* item[=].item[+].linkId = "complications.wallInjury"
* item[=].item[=].text = "Wall injury (Sydney classification)"
* item[=].item[=].type = #coding
* item[=].item[=].enableWhen[+].question = "complications.complicationPresence"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "Type I - Superficial mucosal injury"
* item[=].item[=].answerOption[+].valueCoding.display = "Type II - Deep mucosal injury"
* item[=].item[=].answerOption[+].valueCoding.display = "Type III - Muscularis propria injury"
* item[=].item[=].answerOption[+].valueCoding.display = "Type IV - Serosal injury"
* item[=].item[=].answerOption[+].valueCoding.display = "Type V - Transmural perforation"

* item[=].item[+].linkId = "complications.actionTaken"
* item[=].item[=].text = "Action taken"
* item[=].item[=].type = #coding
* item[=].item[=].enableWhen[+].question = "complications.complicationPresence"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes"
* item[=].item[=].answerOption[+].valueCoding.display = "Conservative management"
* item[=].item[=].answerOption[+].valueCoding.display = "Endoscopic treatment"
* item[=].item[=].answerOption[+].valueCoding.display = "Surgical intervention"

* item[=].item[+].linkId = "complications.bleedingControl"
* item[=].item[=].text = "Bleeding control details"
* item[=].item[=].type = #text
* item[=].item[=].enableWhen[+].question = "complications.complicationPresence"
* item[=].item[=].enableWhen[=].operator = #=
* item[=].item[=].enableWhen[=].answerCoding = $sct#373066001 "Yes"

// ────────────────────────────────────────────────────────────────────────
// Group 7: Final conclusions
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "conclusions"
* item[=].text = "Final conclusions"
* item[=].type = #group

* item[=].item[+].linkId = "conclusions.conclusion"
* item[=].item[=].text = "Conclusion"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "Normal"
* item[=].item[=].answerOption[+].valueCoding.display = "Polyps found"
* item[=].item[=].answerOption[+].valueCoding.display = "Polyps and diverticulosis"
* item[=].item[=].answerOption[+].valueCoding.display = "Diverticulosis"
* item[=].item[=].answerOption[+].valueCoding.display = "Tumor found"
* item[=].item[=].answerOption[+].valueCoding.display = "Inflammatory bowel disease"
* item[=].item[=].answerOption[+].valueCoding.display = "Other pathology"

* item[=].item[+].linkId = "conclusions.conclusionNotes"
* item[=].item[=].text = "Conclusion notes"
* item[=].item[=].type = #text

// ────────────────────────────────────────────────────────────────────────
// Group 8: Follow-up recommendations
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "recommendations"
* item[=].text = "Follow-up recommendations"
* item[=].type = #group

* item[=].item[+].linkId = "recommendations.nextColonoscopy"
* item[=].item[=].text = "Recommended interval for next colonoscopy"
* item[=].item[=].type = #coding
* item[=].item[=].answerOption[+].valueCoding.display = "1 year"
* item[=].item[=].answerOption[+].valueCoding.display = "3 years"
* item[=].item[=].answerOption[+].valueCoding.display = "5 years"
* item[=].item[=].answerOption[+].valueCoding.display = "10 years"
* item[=].item[=].answerOption[+].valueCoding.display = "Not applicable"

* item[=].item[+].linkId = "recommendations.additionalNotes"
* item[=].item[=].text = "Additional notes"
* item[=].item[=].type = #text

// ────────────────────────────────────────────────────────────────────────
// Group 9: Signatures
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "signatures"
* item[=].text = "Signatures"
* item[=].type = #group

* item[=].item[+].linkId = "signatures.examinerName"
* item[=].item[=].text = "Examiner first name"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "signatures.examinerSurname"
* item[=].item[=].text = "Examiner surname"
* item[=].item[=].type = #string
* item[=].item[=].required = true

* item[=].item[+].linkId = "signatures.examDate"
* item[=].item[=].text = "Examination date"
* item[=].item[=].type = #dateTime
* item[=].item[=].required = true
