Instance: observation-colonoscope-reach-cecum-example
InstanceOf: ColonoscopeReachLtColorectal
Usage: #example
Title: "Observation: Colonoscope Reach Cecum (example)"
Description: "Example of an observation recording that the colonoscope reached the Cecum."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#32713005 "Cecum structure (body structure)"

Instance: observation-colonoscope-reach-ileum-example
InstanceOf: ColonoscopeReachLtColorectal
Usage: #example
Title: "Observation: Colonoscope Reach Terminal Ileum (example)"
Description: "Example of an observation recording that the colonoscope reached the Terminal ileum."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#85774003 "Structure of distal portion of ileum (body structure)"
