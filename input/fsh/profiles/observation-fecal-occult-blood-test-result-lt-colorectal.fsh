Profile: ObservationFecalOccultBloodTestResultLtColorectal
Parent: ObservationLt
Id: observation-fecal-occult-blood-test-result-lt-colorectal
Title: "Observation: Fecal Occult Blood Test Result"
Description: "Profile for recording the result of a fecal occult blood test in the context of colorectal cancer screening."
* ^url = $observation-fecal-occult-blood-test-result-lt-colorectal-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* category 1..1
* category = $observation-category#laboratory "Laboratory"

* code 1..1
* code from FecalOccultBloodTestCodesLtColorectal (required)

* subject 1..1
* subject only Reference(PatientLt)

* effective[x] 1..1
* effective[x] only dateTime

* specimen 1..1
* specimen only Reference(Specimen)

* value[x] 1..1
* value[x] only Quantity or CodeableConcept
* valueQuantity ^short = "Quantitative result (e.g., µg/L)"
* valueCodeableConcept ^short = "Qualitative result (e.g., Detected, Not detected)"
* valueCodeableConcept from FecalOccultBloodQualitativeResultLtColorectal (required)