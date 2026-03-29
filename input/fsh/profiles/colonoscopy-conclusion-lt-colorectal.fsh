Profile: ColonoscopyConclusionLtColorectal
Parent: ObservationLt
Id: colonoscopy-conclusion-lt-colorectal
Title: "Colonoscopy Conclusion (LT Colorectal)"
Description: "Profile for recording the final diagnostic conclusion of a colonoscopy examination in the Lithuanian colorectal cancer screening program."
* ^url = $colonoscopy-conclusion-lt-colorectal-url
* ^status = #active

* category = $observation-category#exam "Exam"
* code = $sct#371524004 "Clinical report conclusion (qualifier value)"
* code MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColorectalConclusionVS (required)
* valueCodeableConcept ^short = "Diagnostic conclusion of the colonoscopy"
* note MS
* note ^short = "Additional notes about the conclusion"
