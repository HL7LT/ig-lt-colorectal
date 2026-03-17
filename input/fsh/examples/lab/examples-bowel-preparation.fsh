Instance: observation-bowel-prep-effective-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Bowel Prep Quality Effective (example)"
Description: "Example of an observation recording that the bowel preparation was effective (adequate quality)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#703141002 "Effective bowel preparation for procedure (finding)"

Instance: observation-bowel-prep-inadequate-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Bowel Prep Quality Inadequate (example)"
Description: "Example of an observation recording that the bowel preparation was inadequate (poor quality)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#413261003 "Inadequate bowel preparation (finding)"
