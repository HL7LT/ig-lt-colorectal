Instance: observation-split-dose-preparation-yes-example
InstanceOf: Observation
Usage: #example
Title: "Observation: Split-Dose Preparation - Yes (example)"
Description: "Example showing that the patient used a split-dose bowel preparation method and completed the last dose 4 hours before colonoscopy."
* status = #final
* code.text = "The patient used a split-dose preparation method, and the last dose of the medication was completed 4 hours before the start of the colonoscopy" //will need to find snomed code
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-03-17"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"

Instance: observation-split-dose-preparation-no-example
InstanceOf: Observation
Usage: #example
Title: "Observation: Split-Dose Preparation - No (example)"
Description: "Example showing that the patient did not use a split-dose bowel preparation method or did not complete the last dose 4 hours before colonoscopy." //will need to find snomed code
* status = #final
* code.text = "The patient used a split-dose preparation method, and the last dose of the medication was completed 4 hours before the start of the colonoscopy"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-03-17"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"