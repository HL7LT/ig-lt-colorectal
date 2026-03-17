Profile: ObservationColonoscopeReachLtColorectal
Parent: ObservationLt
Id: observation-colonoscope-reach-lt-colorectal
Title: "Colonoscope Reach (Inspected Until) Observation (LT Colorectal)"
Description: "Profile for recording how far the colonoscope reached during a colorectal cancer screening program. Used to calculate the Cecum intubation rate."
* ^url = $observation-colonoscope-reach-lt-colorectal-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* category = $observation-category#procedure "Procedure"
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* code MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColonoscopeReachLtColorectal (required)
