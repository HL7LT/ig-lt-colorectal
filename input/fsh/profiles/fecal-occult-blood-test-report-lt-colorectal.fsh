Profile: FecalOccultBloodTestReportLtColorectal
Parent: DiagnosticReportLt
Id: fecal-occult-blood-test-report-lt-colorectal
Title: "Diagnostic Report: Fecal Occult Blood Test"
Description: "Diagnostic report representing a fecal occult blood test examination based on stool specimen analysis using an immunochemical method."
* ^url = $fecal-occult-blood-test-report-lt-colorectal-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* subject 1..1
* subject only Reference(PatientLt)

* encounter 0..1
* encounter only Reference(EncounterLt)

* code 1..1
* code from FecalOccultBloodTestCodesLtColorectal (required)

* effective[x] 1..1
* effective[x] only dateTime

* performer 1..*
* performer only Reference(PractitionerRoleLt or PractitionerLt or OrganizationLt)

* specimen 1..1
* specimen only Reference(Specimen)

* result 1..1
* result only Reference(ObservationFecalOccultBloodTestResultLtColorectal)

* conclusion 0..1
* conclusion ^short = "Short textual summary of the fecal occult blood test result"