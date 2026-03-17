Instance: observation-written-information-yes-example
InstanceOf: Observation
Usage: #example
Title: "Observation: Written Information About Preparation - Yes (example)"
Description: "Example showing that the patient received written information about bowel preparation before colonoscopy."
* status = #final
* code = $sct#699822008 "Provision of written information about bowel preparation for procedure (procedure)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-03-17"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"

Instance: observation-written-information-no-example
InstanceOf: Observation
Usage: #example
Title: "Observation: Written Information About Preparation - No (example)"
Description: "Example showing that the patient did not receive written information about bowel preparation before colonoscopy."
* status = #final
* code = $sct#699822008 "Provision of written information about bowel preparation for procedure (procedure)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-03-17"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"