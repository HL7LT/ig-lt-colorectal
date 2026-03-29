Profile: PolypFindingLtColorectal
Parent: ObservationLt
Id: polyp-finding-lt-colorectal
Title: "Polyp Finding (LT Colorectal)"
Description: "Profile for recording individual polyp findings during colonoscopy in the Lithuanian colorectal cancer screening program. Captures location, Paris classification, NICE classification, size, access difficulty, and SMSA score."
* ^url = $polyp-finding-lt-colorectal-url
* ^status = #active

* code = $sct#399505005 "Polyp of large intestine (disorder)"
* subject 1..1 MS
* subject only Reference(PatientLt)
* value[x] 0..0

* bodySite MS
* bodySite ^short = "Anatomical location of polyp"

* derivedFrom MS
* derivedFrom ^short = "Photos of polyp (white light and chromoendoscopy, minimum 2)"

* hasMember MS
* hasMember ^short = "Related polypectomy procedure, biopsy, or histological examination"

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    parisClassification 0..1 MS and
    niceClassification 0..1 MS and
    size 0..1 MS and
    accessToPolyp 0..1 MS and
    predictedHistology 0..1 MS and
    smsaScore 0..1 MS

* component[parisClassification].code.text = "Paris classification"
* component[parisClassification].value[x] only CodeableConcept
* component[parisClassification].valueCodeableConcept from ParisClassificationVS (required)
* component[parisClassification] ^short = "Paris classification (Is, ISP, IP, IIa, IIb, IIc, LST types)"

* component[niceClassification].code.text = "NICE classification"
* component[niceClassification].value[x] only CodeableConcept
* component[niceClassification].valueCodeableConcept from NiceClassificationVS (required)
* component[niceClassification] ^short = "NICE classification (Type I, II, III)"

* component[size].code = $sct#373197004 "Polyp size, largest dimension (observable entity)"
* component[size].value[x] only Quantity
* component[size].valueQuantity.system = $ucum
* component[size].valueQuantity.code = #mm
* component[size] ^short = "Polyp size - largest dimension in mm"

* component[accessToPolyp].code.text = "Access to polyp"
* component[accessToPolyp].value[x] only CodeableConcept
* component[accessToPolyp].valueCodeableConcept from PolypAccessVS (required)
* component[accessToPolyp] ^short = "Access to polyp: Easy or Heavy"

* component[predictedHistology].code.text = "Endoscopic prediction of histology"
* component[predictedHistology].value[x] only CodeableConcept
* component[predictedHistology].valueCodeableConcept from PolypPredictedHistologyVS (required)
* component[predictedHistology] ^short = "Predicted histology based on endoscopic appearance"

* component[smsaScore].code.text = "SMSA Total Score"
* component[smsaScore].value[x] only integer
* component[smsaScore] ^short = "SMSA score: location + Paris + size + access points"
