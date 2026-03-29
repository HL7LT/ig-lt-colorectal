Profile: BowelPreparationQualityLtColorectal
Parent: ObservationLt
Id: bowel-preparation-quality-lt-colorectal
Title: "Bowel Preparation Quality (LT Colorectal)"
Description: "Profile for recording bowel preparation quality assessment using the Boston Bowel Preparation Scale (BBPS) in the Lithuanian colorectal cancer screening program. Quality is poor when total < 6 points, or at least one segment has a score of 0 or 1."
* ^url = $bowel-preparation-quality-lt-colorectal-url
* ^status = #active

* code = $sct#722819004 "Boston bowel preparation scale finding (finding)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* value[x] only CodeableConcept
* valueCodeableConcept from BowelPreparationQualityVS (required)
* valueCodeableConcept ^short = "Overall quality: effective, inadequate, or not done"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    bbpsLeft 0..1 MS and
    bbpsTransverse 0..1 MS and
    bbpsRight 0..1 MS

* component[bbpsLeft].code = $sct#55572008 "Left colon structure (body structure)"
* component[bbpsLeft].value[x] only CodeableConcept
* component[bbpsLeft].valueCodeableConcept from BowelPrepScoreValuesVS (required)
* component[bbpsLeft] ^short = "BBPS left colon segment score (0-3)"

* component[bbpsTransverse].code = $sct#485005 "Transverse colon structure (body structure)"
* component[bbpsTransverse].value[x] only CodeableConcept
* component[bbpsTransverse].valueCodeableConcept from BowelPrepScoreValuesVS (required)
* component[bbpsTransverse] ^short = "BBPS transverse colon segment score (0-3)"

* component[bbpsRight].code = $sct#51342009 "Right colon structure (body structure)"
* component[bbpsRight].value[x] only CodeableConcept
* component[bbpsRight].valueCodeableConcept from BowelPrepScoreValuesVS (required)
* component[bbpsRight] ^short = "BBPS right colon segment score (0-3)"
