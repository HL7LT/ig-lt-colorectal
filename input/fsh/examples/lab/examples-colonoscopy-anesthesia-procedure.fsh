Instance: procedure-colonoscopy-no-anesthesia-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Screening Colonoscopy (example)"
Description: "Example of screening colonoscopy."
* status = #completed
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"

Instance: procedure-colonoscopy-with-anesthesia-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Screening Colonoscopy With Anesthesia (example)"
Description: "Example of screening colonoscopy where anesthesia and/or sedation is recorded as the reason."
* status = #completed
* code = $sct#1263452006 "Anesthesia and/or sedation procedure (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"
* reason.concept = $sct#444783004 "Screening colonoscopy (procedure)"
