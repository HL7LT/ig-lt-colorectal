Profile: TumorFindingLtColorectal
Parent: ObservationLt
Id: tumor-finding-lt-colorectal
Title: "Tumor Finding (LT Colorectal)"
Description: "Profile for recording tumor findings during colonoscopy in the Lithuanian colorectal cancer screening program. Captures location, description, and links to biopsy procedures."
* ^url = $tumor-finding-lt-colorectal-url
* ^status = #active

* code = $sct#363406005 "Malignant neoplasm of colon (disorder)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* value[x] only CodeableConcept
* value[x] MS
* valueCodeableConcept ^short = "Whether tumor was found (Yes/No)"

* bodySite MS
* bodySite from ColorectalAnatomyVS (required)
* bodySite ^short = "Anatomical location of tumor"

* hasMember MS
* hasMember ^short = "Related biopsy procedure or histological examination"

* note MS
* note ^short = "Local notes and tumor description"
