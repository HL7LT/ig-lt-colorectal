Profile: ColonoscopyBleedingControlLtColorectal
Parent: ProcedureLt
Id: colonoscopy-bleeding-control-lt-colorectal
Title: "Colonoscopy Bleeding Control (LT Colorectal)"
Description: "Profile for recording bleeding control procedures performed during colonoscopy in the Lithuanian colorectal cancer screening program. Captures the method used (clip, epinephrine injection, etc.)."
* ^url = $colonoscopy-bleeding-control-lt-colorectal-url
* ^status = #active

* status MS
* code 1..1 MS
* code from BleedingControlMethodVS (required)
* code ^short = "Bleeding control method (clip, epinephrine injection, etc.)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* occurrence[x] only dateTime
* occurrence[x] 1..1 MS
* performer MS
* reason MS
* reason ^short = "Reference to the complication or procedure that caused bleeding"
* note MS
