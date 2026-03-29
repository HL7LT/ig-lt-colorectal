Instance: procedure-colonoscopy-colon-bleeding-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Colonoscopic control of colon bleeding (example)"
Description: "Example of colonoscopic control of colon bleeding."
* status = #completed
* code = $sct#698409004 "Colonoscopic control of bleeding (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"

Instance: procedure-colonoscopy-bleed-clip-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Bleeding Control by Clip (example)"
Description: "Example showing closure by clip under the reason of bleeding control."
* status = #completed
* code = $sct#21147007 "Closure by clip (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"
* reason.concept = $sct#698409004 "Colonoscopic control of bleeding (procedure)"

Instance: procedure-colonoscopy-bleed-epinephrine-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Bleeding Control by Epinephrine (example)"
Description: "Example showing injection of epinephrine under reason of bleeding control."
* status = #completed
* code = $sct#313191000 "Injection of epinephrine (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"
* reason.concept = $sct#698409004 "Colonoscopic control of bleeding (procedure)"
