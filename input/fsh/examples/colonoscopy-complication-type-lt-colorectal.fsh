Instance: observation-colonoscopy-complication-hemorrhage-example
InstanceOf: ColonoscopyComplicationTypeLtColorectal
Usage: #example
Title: "Observation: Hemorrhage After Diagnostic Colonoscopy (example)"
Description: "Example of an observation recording hemorrhage of colon after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#95540002 "Hemorrhage of colon (disorder)"

Instance: observation-colonoscopy-complication-anesthesia-example
InstanceOf: ColonoscopyComplicationTypeLtColorectal
Usage: #example
Title: "Observation: Anesthesia Complication After Diagnostic Colonoscopy (example)"
Description: "Example of an observation recording complication of anesthesia after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#33211000 "Complication of anesthesia (disorder)"

Instance: observation-colonoscopy-comp-perforation-example
InstanceOf: ColonoscopyComplicationTypeLtColorectal
Usage: #example
Title: "Observation: Accidental Organ Perforation During Procedure (example)"
Description: "Example of an observation recording accidental organ perforation during a procedure after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#269304002 "Accidental organ perforation during a procedure (disorder)"

Instance: observation-colonoscopy-complication-large-perforation-example
InstanceOf: ColonoscopyComplicationTypeLtColorectal
Usage: #example
Title: "Observation: Perforation of Large Intestine (example)"
Description: "Example of an observation recording perforation of large intestine after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#303078007 "Perforation of large intestine (disorder)"
