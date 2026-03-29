Profile: PolypectomyProcedureLtColorectal
Parent: ProcedureLt
Id: polypectomy-procedure-lt-colorectal
Title: "Polypectomy Procedure (LT Colorectal)"
Description: "Profile for recording polypectomy procedures in the Lithuanian colorectal cancer screening program. Captures the removal method, technique (en bloc / piecemeal), equipment used, and hydropreparation details."
* ^url = $polypectomy-procedure-lt-colorectal-url
* ^status = #active

* status MS
* code 1..1 MS
* code = $sct#274025005 "Colonic polypectomy (procedure)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* occurrence[x] only dateTime
* occurrence[x] 1..1 MS
* performer MS
* reason MS
* reason ^short = "Reference to the polyp finding that prompted the polypectomy"
* bodySite MS
* bodySite ^short = "Removal technique (en bloc / piecemeal)"
* used MS
* used ^short = "Equipment and hydropreparation substances used"
* note MS
