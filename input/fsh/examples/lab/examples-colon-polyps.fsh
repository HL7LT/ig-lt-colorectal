ValueSet: PolypPredictedHistologyLtColorectal
Id: polyp-predicted-histology-lt-colorectal
Title: "Colorectal - Polyp Predicted Histology VS"
Description: "Endoscopic prediction of polyp histology using virtual chromoendoscopy."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#721691004 "Hyperplastic polyp of large intestine (disorder)"
* $sct#1230009008 "Sessile serrated polyp of colon (disorder)"
* $sct#399432003 "Adenoma of large intestine (disorder)"
* $sct#162572001 "Suspected malignancy (situation)"

Profile: ObservationPolypLtColorectal
Parent: ObservationLt
Id: observation-polyp-lt-colorectal
Title: "Colon Polyp Observation (LT Colorectal)"
Description: "Profile for recording a colon polyp, enforcing the inclusion of size, Paris/NICE classifications, and SMSA scoring."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#exam "Exam"
* code = $sct#399505005 "Polyp of large intestine (disorder)"
* subject 1..1 MS
* value[x] only CodeableConcept 
* valueCodeableConcept from $yes-no-url (required)

// Slicing the components so we can mandate the specific rules for each piece of data
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    size 1..1 MS and
    paris 1..1 MS and
    nice 1..1 MS and
    predictedHistology 1..1 MS and
    access 1..1 MS and
    smsaScore 1..1 MS and
    smsaLevel 1..1 MS

// 1. Size
* component[size].code = $sct#373197004 "Polyp size, largest dimension (observable entity)"
* component[size].value[x] only Quantity

// 2. Paris
* component[paris].code = ColorectalPolypCodesLt#comp-paris
* component[paris].value[x] only CodeableConcept

// 3. NICE
* component[nice].code = ColorectalPolypCodesLt#comp-nice
* component[nice].value[x] only CodeableConcept

// 4. Predicted Histology
* component[predictedHistology].code = ColorectalPolypCodesLt#comp-hist-predict
* component[predictedHistology].value[x] only CodeableConcept
* component[predictedHistology].valueCodeableConcept from PolypPredictedHistologyLtColorectal (required)

// 5. Access
* component[access].code = ColorectalPolypCodesLt#comp-access
* component[access].value[x] only CodeableConcept

// 6. SMSA Score
* component[smsaScore].code = ColorectalPolypCodesLt#comp-smsa-score
* component[smsaScore].value[x] only integer

// 7. SMSA Level
* component[smsaLevel].code = ColorectalPolypCodesLt#comp-smsa-level
* component[smsaLevel].value[x] only CodeableConcept

CodeSystem: ColorectalPolypCodesLt
Id: colorectal-polyp-codes-lt
Title: "Colorectal - Local Polyp Codes CS"
Description: "Local codes for polyp classifications (Paris, NICE, Access, SMSA) used in the Lithuanian colorectal screening program."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* ^caseSensitive = true

// Observation Component Identifiers
* #comp-paris "Paris classification"
* #comp-nice "NICE classification"
* #comp-hist-predict "Endoscopic prediction of histology"
* #comp-access "Access to polyp"
* #comp-smsa-score "SMSA Total Score"
* #comp-smsa-level "SMSA Level"

// Paris Classification Values
* #paris-is "Is (Sessile)"
* #paris-ip "Ip (Pedunculated)"
* #paris-iia "IIa (Flat elevated)"
* #paris-iib "IIb (Flat)"
* #paris-iic "IIc (Depressed)"
* #paris-lst-g-h "LST-G-H (Granular homogeneous)"
* #paris-lst-g-nm "LST-G-NM (Granular nodular mixed)"
* #paris-lst-ng-fe "LST-NG-FE (Non-granular flat elevated)"
* #paris-lst-ng-pd "LST-NG-PD (Non-granular pseudodepressed)"

// NICE Classification Values
* #nice-1 "Type I"
* #nice-2 "Type II"
* #nice-3 "Type III"

// Access Difficulty Values
* #access-easy "Easy"
* #access-heavy "Heavy/Difficult"

// SMSA Levels
* #smsa-lvl-1 "Level I (4-5 points)"
* #smsa-lvl-2 "Level II (6-8 points)"
* #smsa-lvl-3 "Level III (9-12 points)"
* #smsa-lvl-4 "Level IV (>= 13 points)"


Instance: observation-polyp-found-example
InstanceOf: ObservationPolypLtColorectal // <-- Pointing to the new Profile!
Usage: #example
Title: "Observation: Colorectal - Polyp Found (with SMSA & Details)"
Description: "Example recording a colon polyp, properly mapped to the ColorectalPolypCodesLt CodeSystem."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#399505005 "Polyp of large intestine (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"

// Yes, there is a polyp
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"

// Location (Transverse colon)
* bodySite = $sct#485005 "Transverse colon structure (body structure)"
* note[0].text = "Polyp noted during withdrawal."

// 1. Size (15mm)
* component[size].code = $sct#373197004 "Polyp size, largest dimension (observable entity)"
* component[size].valueQuantity = 15 'mm' "mm"

// 2. Paris Classification (IIa)
* component[paris].code = ColorectalPolypCodesLt#comp-paris
* component[paris].valueCodeableConcept = ColorectalPolypCodesLt#paris-iia "IIa (Flat elevated)"

// 3. NICE Classification (Type II)
* component[nice].code = ColorectalPolypCodesLt#comp-nice
* component[nice].valueCodeableConcept = ColorectalPolypCodesLt#nice-2 "Type II"

// 4. Predicted Histology (Adenoma)
* component[predictedHistology].code = ColorectalPolypCodesLt#comp-hist-predict
* component[predictedHistology].valueCodeableConcept = $sct#399432003 "Adenoma of large intestine (disorder)"

// 5. Access Difficulty (Easy)
* component[access].code = ColorectalPolypCodesLt#comp-access
* component[access].valueCodeableConcept = ColorectalPolypCodesLt#access-easy "Easy"

// 6. SMSA Total Score (9 points)
* component[smsaScore].code = ColorectalPolypCodesLt#comp-smsa-score
* component[smsaScore].valueInteger = 9

// 7. SMSA Level (Level III)
* component[smsaLevel].code = ColorectalPolypCodesLt#comp-smsa-level
* component[smsaLevel].valueCodeableConcept = ColorectalPolypCodesLt#smsa-lvl-3 "Level III (9-12 points)"

/*
Instance: procedure-polypectomy-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Colorectal - Polypectomy (Cold Snare, En Bloc, Adrenaline)"
Description: "Example recording the removal of a polyp using a cold snare, en bloc technique, with adrenaline hydropreparation and air filling."
* status = #completed
* category = $sct#387713003 "Surgical procedure (procedure)"
* code = $sct#274025005 "Colonic polypectomy (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"
* reason.reference = Reference(observation-polyp-found-example)

// 1. Method: En Bloc
* method.text = "En bloc"

// 2. Lumen Filling: Air
* used[0].concept = $sct#702173008 "Medical air (substance)"

// 3. Equipment: Cold Snare
* used[1].concept = $sct#413268009 "Cold snare, device (physical object)"

// 4. Hydropreparation: Adrenaline
* used[2].concept = $sct#387362001 "Adrenaline (substance)"

// 5. Histology Status: Sent
* report.display = "Histology requested" 

*/