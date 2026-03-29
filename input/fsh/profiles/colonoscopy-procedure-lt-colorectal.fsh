Profile: ColonoscopyProcedureLtColorectal
Parent: ProcedureLt
Id: colonoscopy-procedure-lt-colorectal
Title: "Colonoscopy Procedure (LT Colorectal)"
Description: "Profile for recording the colonoscopy procedure in the Lithuanian colorectal cancer screening program. Captures whether the procedure was performed with or without anesthesia, video colonoscope usage, and withdrawal time."
* ^url = $colonoscopy-procedure-lt-colorectal-url
* ^status = #active

* status MS
* code 1..1 MS
* code = $sct#73761001 "Colonoscopy (procedure)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* occurrence[x] only dateTime
* occurrence[x] 1..1 MS
* performer MS
* reason MS
* note MS
