Profile: ObservationDiagnosticColonoscopyComplicationTypeLtColorectal
Parent: ObservationLt
Id: observation-colonoscopy-complication-type-lt-colorectal
Title: "Diagnostic Colonoscopy Complication Type Observation (LT Colorectal)"
Description: "Profile for recording the complication type after diagnostic colonoscopy. This observation is recorded only if complication presence is Yes."
* ^url = $observation-colonoscopy-complication-type-lt-colorectal-url
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#363103008 "Endocrine system complication of procedure (disorder)"
* code MS

* subject 1..1 MS
* subject only Reference(PatientLt)

* performer MS
* effective[x] MS

* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColonoscopyComplicationTypeLtColorectal (required)
