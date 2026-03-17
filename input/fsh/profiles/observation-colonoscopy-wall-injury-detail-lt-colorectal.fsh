Profile: ObservationDiagnosticColonoscopyWallInjuryDetailLtColorectal
Parent: ObservationLt
Id: observation-colonoscopy-wall-injury-detail-lt-colorectal
Title: "Diagnostic Colonoscopy Wall Injury Detail Observation (LT Colorectal)"
Description: "Profile for recording Sydney classification and action taken after colon wall injury during diagnostic colonoscopy. This observation is recorded only if accidental organ perforation during a procedure or perforation of large intestine was selected as the complication type."
* ^url = $observation-colonoscopy-wall-injury-detail-lt-colorectal-url
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* code MS

* subject 1..1 MS
* subject only Reference(PatientLt)

* performer MS
* effective[x] MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed

* component contains
    sydneyClassification 1..1 MS and
    actionTaken 1..1 MS

* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].value[x] only CodeableConcept
* component[sydneyClassification].value[x] 1..1 MS
* component[sydneyClassification].valueCodeableConcept from SydneyClassificationLtColorectal (required)

* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].value[x] only CodeableConcept
* component[actionTaken].value[x] 1..1 MS
* component[actionTaken].valueCodeableConcept from ColonoscopyWallInjuryActionLtColorectal (required)
