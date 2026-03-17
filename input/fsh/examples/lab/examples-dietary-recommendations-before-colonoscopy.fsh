Instance: observation-dietary-recommendations-yes-example
InstanceOf: Observation
Usage: #example
Title: "Observation: Dietary Recommendations Before Colonoscopy - Yes (example)"
Description: "Example showing that the patient received dietary education for bowel preparation before colonoscopy."
* status = #final
* code = $sct#700430009 "Dietary education for preparation of bowel for procedure (procedure)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-03-17"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"

Instance: observation-dietary-recommendations-no-example
InstanceOf: Observation
Usage: #example
Title: "Observation: Dietary Recommendations Before Colonoscopy - No (example)"
Description: "Example showing that the patient did not receive dietary education for bowel preparation before colonoscopy."
* status = #final
* code = $sct#700430009 "Dietary education for preparation of bowel for procedure (procedure)"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-03-17"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"