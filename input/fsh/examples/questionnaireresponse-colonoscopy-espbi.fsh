// ══════════════════════════════════════════════════════════════════════════
// Narrative mapping -- QuestionnaireResponse -> FHIR profiles
// See questionnaire-colonoscopy-espbi.fsh for full mapping details
// ══════════════════════════════════════════════════════════════════════════

Instance: questionnaireresponse-colonoscopy-espbi-example
InstanceOf: QuestionnaireResponse
Usage: #example
Title: "QuestionnaireResponse: ESPBI Colonoscopy (example)"
Description: "A completed ESPBI colonoscopy form for the Lithuanian colorectal cancer screening programme. Shows a colonoscopy with anesthesia, adequate bowel preparation (BBPS 7), cecum reached, one sigmoid polyp removed with cold snare, no complications, conclusion: polyps found, next colonoscopy in 3 years."
* questionnaire = "https://hl7.lt/fhir/colorectal/Questionnaire/questionnaire-colonoscopy-espbi"
* status = #completed
* authored = "2026-03-12T14:30:00+02:00"
* subject = Reference(patient-male-example)
* author = Reference(practitioner-example)

// ────────────────────────────────────────────────────────────────────────
// Group 1: Basic descriptive part
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "basicInfo"
* item[=].text = "Basic descriptive part"

* item[=].item[+].linkId = "basicInfo.postponedColonoscopy"
* item[=].item[=].text = "Was colonoscopy postponed for screening?"
* item[=].item[=].answer[+].valueBoolean = false

* item[=].item[+].linkId = "basicInfo.anesthesia"
* item[=].item[=].text = "Anesthesia"
* item[=].item[=].answer[+].valueCoding = $sct#398166005 "Performed"

* item[=].item[+].linkId = "basicInfo.videoColonoscope"
* item[=].item[=].text = "Video colonoscope used?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "basicInfo.withdrawalTime"
* item[=].item[=].text = "Withdrawal time (minutes)"
* item[=].item[=].answer[+].valueInteger = 8

* item[=].item[+].linkId = "basicInfo.procedureDate"
* item[=].item[=].text = "Procedure date"
* item[=].item[=].answer[+].valueDateTime = "2026-03-12T10:00:00+02:00"

// ────────────────────────────────────────────────────────────────────────
// Group 2: Bowel preparation assessment
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "bowelPrep"
* item[=].text = "Bowel preparation assessment"

* item[=].item[+].linkId = "bowelPrep.prepQuality"
* item[=].item[=].text = "Bowel preparation quality adequate?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "bowelPrep.bbpsRight"
* item[=].item[=].text = "BBPS Right colon / ascending (0-3)"
* item[=].item[=].answer[+].valueInteger = 2

* item[=].item[+].linkId = "bowelPrep.bbpsTransverse"
* item[=].item[=].text = "BBPS Transverse colon (0-3)"
* item[=].item[=].answer[+].valueInteger = 2

* item[=].item[+].linkId = "bowelPrep.bbpsLeft"
* item[=].item[=].text = "BBPS Left colon / descending + sigmoid (0-3)"
* item[=].item[=].answer[+].valueInteger = 3

* item[=].item[+].linkId = "bowelPrep.totalBbps"
* item[=].item[=].text = "Total BBPS score (0-9)"
* item[=].item[=].answer[+].valueInteger = 7

* item[=].item[+].linkId = "bowelPrep.dietaryRecommendations"
* item[=].item[=].text = "Were dietary recommendations given?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "bowelPrep.splitDose"
* item[=].item[=].text = "Was split-dose protocol used?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "bowelPrep.writtenInfo"
* item[=].item[=].text = "Was written information about preparation given?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "bowelPrep.usedPreparations"
* item[=].item[=].text = "Used preparations for bowel preparation"
* item[=].item[=].answer[+].valueCoding = $sct#712567003 "Macrogol 4000 (substance)"

// ────────────────────────────────────────────────────────────────────────
// Group 3: Colonoscope reach
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "scopeReach"
* item[=].text = "Colonoscope reach"

* item[=].item[+].linkId = "scopeReach.reachLocation"
* item[=].item[=].text = "Deepest point reached by colonoscope"
* item[=].item[=].answer[+].valueCoding = $sct#32713005 "Cecum structure"

// ────────────────────────────────────────────────────────────────────────
// Group 4: Polyp findings
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "polypFindings"
* item[=].text = "Polyp findings"

* item[=].item[+].linkId = "polypFindings.polypFound"
* item[=].item[=].text = "Polyp found?"
* item[=].item[=].answer[+].valueBoolean = true

* item[=].item[+].linkId = "polypFindings.location"
* item[=].item[=].text = "Polyp location"
* item[=].item[=].answer[+].valueCoding = $sct#60184004 "Sigmoid colon structure"

* item[=].item[+].linkId = "polypFindings.sizeMm"
* item[=].item[=].text = "Polyp size (mm)"
* item[=].item[=].answer[+].valueInteger = 8

* item[=].item[+].linkId = "polypFindings.parisClassification"
* item[=].item[=].text = "Paris endoscopic classification"
* item[=].item[=].answer[+].valueCoding.display = "IIa Slightly elevated"

* item[=].item[+].linkId = "polypFindings.niceClassification"
* item[=].item[=].text = "NICE classification"
* item[=].item[=].answer[+].valueCoding.display = "Type II (Adenoma)"

* item[=].item[+].linkId = "polypFindings.predictedHistology"
* item[=].item[=].text = "Predicted histology"
* item[=].item[=].answer[+].valueCoding.display = "Adenoma"

* item[=].item[+].linkId = "polypFindings.locationSide"
* item[=].item[=].text = "Location side"
* item[=].item[=].answer[+].valueCoding.display = "Left side"

* item[=].item[+].linkId = "polypFindings.accessDifficulty"
* item[=].item[=].text = "Access difficulty"
* item[=].item[=].answer[+].valueCoding.display = "Easy"

* item[=].item[+].linkId = "polypFindings.smsaScore"
* item[=].item[=].text = "SMSA total score"
* item[=].item[=].answer[+].valueInteger = 5

* item[=].item[+].linkId = "polypFindings.smsaLevel"
* item[=].item[=].text = "SMSA level"
* item[=].item[=].answer[+].valueCoding.display = "Level 1 (4-5 points)"

* item[=].item[+].linkId = "polypFindings.polypRemoved"
* item[=].item[=].text = "Was polyp removed?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "polypFindings.removalMethod"
* item[=].item[=].text = "Removal method"
* item[=].item[=].answer[+].valueCoding.display = "Cold snare"

* item[=].item[+].linkId = "polypFindings.complicationAfterRemoval"
* item[=].item[=].text = "Complication after polyp removal?"
* item[=].item[=].answer[+].valueCoding = $sct#373067005 "No"

* item[=].item[+].linkId = "polypFindings.allPolypsRemovedSimultaneously"
* item[=].item[=].text = "All polyps removed simultaneously?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

* item[=].item[+].linkId = "polypFindings.sentForHistology"
* item[=].item[=].text = "Sent for histological examination?"
* item[=].item[=].answer[+].valueCoding = $sct#373066001 "Yes"

// ────────────────────────────────────────────────────────────────────────
// Group 5: Tumor findings
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "tumorFindings"
* item[=].text = "Tumor findings"

* item[=].item[+].linkId = "tumorFindings.tumorFound"
* item[=].item[=].text = "Tumor found?"
* item[=].item[=].answer[+].valueBoolean = false

// ────────────────────────────────────────────────────────────────────────
// Group 6: Complications after colonoscopy
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "complications"
* item[=].text = "Complications after colonoscopy"

* item[=].item[+].linkId = "complications.complicationPresence"
* item[=].item[=].text = "Were there complications?"
* item[=].item[=].answer[+].valueCoding = $sct#373067005 "No"

// ────────────────────────────────────────────────────────────────────────
// Group 7: Final conclusions
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "conclusions"
* item[=].text = "Final conclusions"

* item[=].item[+].linkId = "conclusions.conclusion"
* item[=].item[=].text = "Conclusion"
* item[=].item[=].answer[+].valueCoding.display = "Polyps found"

* item[=].item[+].linkId = "conclusions.conclusionNotes"
* item[=].item[=].text = "Conclusion notes"
* item[=].item[=].answer[+].valueString = "Single 8mm adenomatous polyp in the sigmoid colon, removed with cold snare. No other pathology detected."

// ────────────────────────────────────────────────────────────────────────
// Group 8: Follow-up recommendations
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "recommendations"
* item[=].text = "Follow-up recommendations"

* item[=].item[+].linkId = "recommendations.nextColonoscopy"
* item[=].item[=].text = "Recommended interval for next colonoscopy"
* item[=].item[=].answer[+].valueCoding.display = "3 years"

* item[=].item[+].linkId = "recommendations.additionalNotes"
* item[=].item[=].text = "Additional notes"
* item[=].item[=].answer[+].valueString = "Polyp sent for histological examination. Patient informed about the follow-up plan."

// ────────────────────────────────────────────────────────────────────────
// Group 9: Signatures
// ────────────────────────────────────────────────────────────────────────
* item[+].linkId = "signatures"
* item[=].text = "Signatures"

* item[=].item[+].linkId = "signatures.examinerName"
* item[=].item[=].text = "Examiner first name"
* item[=].item[=].answer[+].valueString = "Jonas"

* item[=].item[+].linkId = "signatures.examinerSurname"
* item[=].item[=].text = "Examiner surname"
* item[=].item[=].answer[+].valueString = "Kazlauskas"

* item[=].item[+].linkId = "signatures.examDate"
* item[=].item[=].text = "Examination date"
* item[=].item[=].answer[+].valueDateTime = "2026-03-12T14:30:00+02:00"
