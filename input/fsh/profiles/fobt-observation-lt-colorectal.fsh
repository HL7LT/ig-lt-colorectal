Profile: FobtObservationLtColorectal
Parent: ObservationLt
Id: fobt-observation-lt-colorectal
Title: "Fecal Occult Blood Test (LT Colorectal)"
Description: "Profile for recording fecal occult blood test (FOBT) results in the Lithuanian colorectal cancer screening program. Supports both qualitative (detected/not detected) and quantitative (ug/l) results."
* ^url = $fobt-observation-lt-colorectal-url
* ^status = #active

* code 1..1 MS
* code from FecalOccultBloodTestCodesVS (required)
* subject 1..1 MS
* subject only Reference(PatientLt)
* value[x] MS
* value[x] ^short = "FOBT result: CodeableConcept for qualitative, Quantity for quantitative"
* specimen MS
