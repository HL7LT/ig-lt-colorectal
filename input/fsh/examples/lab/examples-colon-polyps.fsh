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

Instance: observation-polyp-found-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Polyp Found (with SMSA & Details)"
Description: "Example recording a colon polyp, its size, Paris classification, access difficulty, and calculated SMSA score."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#399505005 "Polyp of large intestine (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
// Transverse colon = SMSA 2 pts
* bodySite = $sct#485005 "Transverse colon structure (body structure)"
* note[0].text = "Polyp noted during withdrawal."
// (S) Size in mm, 15mm = SMSA 3 pts
* component[0].code = $sct#373197004 "Polyp size, largest dimension (observable entity)"
* component[0].valueQuantity = 15 'mm' "mm"
// Paris Classification IIa = SMSA 3 pts
* component[1].code.text = "Paris classification"
* component[1].valueCodeableConcept.text = "IIa" 
// NICE Classification
* component[2].code.text = "NICE classification"
* component[2].valueCodeableConcept.text = "Type II"
// Predicted Histology
* component[3].code.text = "Endoscopic prediction of histology"
* component[3].valueCodeableConcept = $sct#399432003 "Adenoma of large intestine (disorder)"
// Access to the polyp, Easy = SMSA 1 pt
* component[4].code.text = "Access to polyp"
* component[4].valueCodeableConcept.text = "Easy"
// SMSA Total Score (2 + 3 + 3 + 1 = 9 points)
* component[5].code.text = "SMSA Total Score"
* component[5].valueInteger = 9
// SMSA Level (9 points = Level III)
* component[6].code.text = "SMSA Level"
* component[6].valueCodeableConcept.text = "Level III"



// fixed values for paris and NICE and access to polyp and smsa level, codesystem basically for everything, also need a profile



Instance: procedure-polypectomy-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Colorectal - Polypectomy (Cold Snare, En Bloc)"
Description: "Example recording the removal of a polyp using a cold snare, en bloc technique, with hydropreparation."
* status = #completed
* category = $sct#387713003 "Surgical procedure (procedure)"
// The main action code: Colonic polypectomy
* code = $sct#274025005 "Colonic polypectomy (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"
* reason.reference = Reference(observation-polyp-found-example)
// Technique: En Bloc
* bodySite.text = "En bloc removal"
// Equipment used: Cold snare device
* used[0].concept = $sct#413268009 "Cold snare, device (physical object)"
// Hydropreparation used: Adrenaline
* used[1].concept.text = "Hydropreparation using Adrenaline"
* note[0].text = "Histological examination: Sent. Sample number 98765-B."