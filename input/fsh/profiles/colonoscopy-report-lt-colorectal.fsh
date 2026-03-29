Profile: ColonoscopyReportLtColorectal
Parent: ImagingReportLt
Id: colonoscopy-report-lt-colorectal
Title: "Colonoscopy Report (LT Colorectal)"
Description: "Colonoscopy screening report for the Lithuanian colorectal cancer prevention program. Wraps a ColonoscopyCompositionLtColorectal and aggregates structured results from the colonoscopy procedure."
* ^url = $colonoscopy-report-lt-colorectal-url
* ^status = #active

* code.coding contains doc-type 1..1
* code.coding[doc-type] = $sct#73761001 "Colonoscopy (procedure)"

* encounter only Reference(EncounterLt)
* composition only Reference(ColonoscopyCompositionLtColorectal)

* result MS
* result ^short = "Colonoscopy results: scope reach, bowel prep, polyps, tumors, complications, conclusions"
* result ^definition = "References to Observation and Procedure resources carrying the structured findings of the colonoscopy examination."
