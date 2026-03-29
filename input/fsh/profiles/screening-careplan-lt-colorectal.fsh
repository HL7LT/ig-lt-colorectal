Profile: ScreeningCarePlanLtColorectal
// TODO: Change Parent to ScreeningCarePlanLt after ig-lt-base is published with it
Parent: CarePlanLt
Id: screening-careplan-lt-colorectal
Title: "Screening CarePlan (LT Colorectal)"
Description: """
CarePlan tracking the colorectal cancer screening programme cycle.
Captures programme enrollment, current status, scheduled activities
(FOBT testing, colonoscopy referrals, follow-up intervals),
and care recommendations after colonoscopy.
"""
* ^url = $screening-careplan-lt-colorectal-url
* ^status = #active
* ^publisher = "HL7 Lithuania"
* status 1..1
* intent 1..1
* intent = #plan
* category 1..1
* category = $sct#268548003 "Screening for malignant neoplasm of large intestine (procedure)"
* title 1..1
* subject 1..1
* subject only Reference(PatientLt)
* period 0..1
* period ^short = "Programme participation period (enrollment to exit/completion)"
* addresses 0..*
* addresses ^short = "Reason for screening (e.g. age-based eligibility, positive FOBT)"
* activity 0..*
* activity ^short = "Scheduled screening activities (FOBT, colonoscopy, surveillance intervals)"
* note 0..*
* note ^short = "Programme notes, recommendations, follow-up interval"
