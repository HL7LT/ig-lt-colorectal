Instance: observation-colonoscopy-complication-presence-no-example
InstanceOf: ColonoscopyComplicationPresenceLtColorectal
Usage: #example
Title: "Observation: Diagnostic Colonoscopy Complication Presence No (example)"
Description: "Example of an observation recording that no complication occurred after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"

Instance: observation-colonoscopy-complication-presence-yes-example
InstanceOf: ColonoscopyComplicationPresenceLtColorectal
Usage: #example
Title: "Observation: Diagnostic Colonoscopy Complication Presence Yes (example)"
Description: "Example of an observation recording that a complication occurred after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
