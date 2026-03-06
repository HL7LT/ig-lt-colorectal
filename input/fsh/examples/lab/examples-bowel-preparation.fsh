
ValueSet: BowelPreparationQualityLtColorectal
Id: bowel-preparation-quality-lt-colorectal
Title: "Colorectal - Quality of Bowel Preparation VS"
Description: "SNOMED CT codes representing the overall quality of bowel preparation for a colonoscopy procedure."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* $sct#703141002 "Effective bowel preparation for procedure (finding)"
* $sct#413261003 "Inadequate bowel preparation (finding)"             
* $sct#722825000 "Bowel preparation not done (situation)"             

Instance: observation-bowel-prep-effective-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - Bowel Prep Quality (Effective)"
Description: "Example of an observation recording that the bowel preparation was effective (adequate quality)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#703141002 "Effective bowel preparation for procedure (finding)"

Instance: observation-bowel-prep-inadequate-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - Bowel Prep Quality (Inadequate)"
Description: "Example of an observation recording that the bowel preparation was inadequate (poor quality)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#413261003 "Inadequate bowel preparation (finding)"
