Instance: procedure-colorectal-colonoscopy-no-anesthesia-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Colorectal - Screening Colonoscopy Example"
Description: "Example of screening colonoscopy."
* status = #completed
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* subject = Reference(example-patient-male)
* occurrenceDateTime = "2026-02-26"


Instance: procedure-colorectal-colonoscopy-with-anesthesia-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Colorectal - Screening Colonoscopy With Anesthesia Example"
Description: "Example of screening colonoscopy where anesthesia and/or sedation is recorded as the reason."
* status = #completed
* code = $sct#1263452006 "Anesthesia and/or sedation procedure (procedure)"
* subject = Reference(example-patient-male)
* occurrenceDateTime = "2026-02-26"
* reason.concept = $sct#444783004 "Screening colonoscopy (procedure)"