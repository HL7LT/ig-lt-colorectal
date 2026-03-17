Instance: observation-colonoscopy-wall-injury-clip-type3-example
InstanceOf: ObservationDiagnosticColonoscopyWallInjuryDetailLtColorectal
Usage: #example
Title: "Observation: Wall Injury Detail Type 3 with Clip (example)"
Description: "Example showing Sydney classification type 3 and closure by clip after colon wall injury during diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].valueCodeableConcept = SydneyClassificationCsLtColorectal#type-3 "Sydney DMI Type III"
* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].valueCodeableConcept = $sct#360017003 "Clipping - action (qualifier value)"

Instance: observation-colonoscopy-wall-injury-suture-type4-example
InstanceOf: ObservationDiagnosticColonoscopyWallInjuryDetailLtColorectal
Usage: #example
Title: "Observation: Wall Injury Detail Type 4 with Suture (example)"
Description: "Example showing Sydney classification type 4 and closure by suture after colon wall injury during diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].valueCodeableConcept = SydneyClassificationCsLtColorectal#type-4 "Sydney DMI Type IV"
* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].valueCodeableConcept = $sct#29684008 "Sutured (qualifier value)"

Instance: observation-colonoscopy-wall-injury-operation-type5-example
InstanceOf: ObservationDiagnosticColonoscopyWallInjuryDetailLtColorectal
Usage: #example
Title: "Observation: Wall Injury Detail Type 5 with Operation (example)"
Description: "Example showing Sydney classification type 5 and operation on colon after colon wall injury during diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-12"
* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].valueCodeableConcept = SydneyClassificationCsLtColorectal#type-5 "Sydney DMI Type V"
* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].valueCodeableConcept = $sct#261424001 "Primary operation (qualifier value)"
