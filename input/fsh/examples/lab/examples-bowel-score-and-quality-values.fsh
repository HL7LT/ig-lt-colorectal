Instance: observation-bbps-left-colon-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - BBPS Left Colon (3 points)"
Description: "Example of an observation recording an excellent (3 points) Boston scale score for the Left colon."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#722819004 "Boston bowel preparation scale finding (finding)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* bodySite = $sct#55572008 "Left colon structure (body structure)"
// 3-point score
* valueCodeableConcept = $sct#10311000132100 "Entire mucosa of colon segment seen well with no residual staining, small fragments of stool or opaque liquid (finding)"

Instance: observation-bbps-transverse-colon-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - BBPS Transverse Colon (2 points)"
Description: "Example of an observation recording a good (2 points) Boston scale score for the Transverse colon."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#722819004 "Boston bowel preparation scale finding (finding)" //Boston bowel preparation scale (assessment scale) 722818007
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* bodySite = $sct#485005 "Transverse colon structure (body structure)"
// 2-point score
* valueCodeableConcept = $sct#10301000132102 "Minor amount of residual staining, small fragments of stool and/or opaque liquid, but mucosa of colon segment seen well (finding)"

Instance: observation-bowel-prep-total-effective-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Bowel Prep Quality & Total Score (Effective)"
Description: "Example of a single observation recording both the overall Effective quality and the Total Boston Scale score."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure (procedure)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#703141002 "Effective bowel preparation for procedure (finding)"
* component[0].code = $sct#722819004 "Boston bowel preparation scale finding (finding)"
* component[0].valueInteger = 6

Instance: observation-bowel-prep-total-inadequate-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Bowel Prep Quality & Total Score (Inadequate)"
Description: "Example of a single observation recording both the overall Inadequate quality and the Total Boston Scale score."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure (procedure)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#413261003 "Inadequate bowel preparation (finding)"
* component[0].code = $sct#722819004 "Boston bowel preparation scale finding (finding)"
* component[0].valueInteger = 2

Instance: observation-bowel-prep-not-done-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Bowel Prep Quality (Not Done)"
Description: "Example of an observation recording that the bowel preparation was not done (no Boston scale score applicable)."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#225106003 "Preparation of bowel for procedure (procedure)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#722825000 "Bowel preparation not done (situation)"