Profile: ObservationDiagnosticColonoscopyComplicationPresenceLtColorectal
Parent: ObservationLt
Id: observation-colonoscopy-complication-presence-lt-colorectal
Title: "Diagnostic Colonoscopy Complication Presence Observation (LT Colorectal)"
Description: "Profile for recording whether there was a complication after diagnostic colonoscopy."
* ^url = $observation-colonoscopy-complication-presence-lt-colorectal-url
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
* valueCodeableConcept from ColonoscopyComplicationPresenceLtColorectal (required)
