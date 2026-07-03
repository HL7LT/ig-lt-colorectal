// PolypPredictedHistologyVS moved to input/fsh/terminology/polyp-predicted-histology-lt-colorectal.fsh

Profile: ObservationPolypLtColorectal
Parent: ObservationLt
Id: observation-polyp-lt-colorectal
Title: "Colon Polyp Observation (LT Colorectal)"
Description: "Profile for recording a colon polyp, enforcing the inclusion of size, Paris/NICE classifications, and SMSA scoring."
* ^status = #active
* ^experimental = false
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
* component[predictedHistology].valueCodeableConcept from PolypPredictedHistologyVS (required)

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
* ^experimental = false
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
InstanceOf: ObservationPolypLtColorectal
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

CodeSystem: ColorectalPolypectomyCodesLt
Id: colorectal-polypectomy-codes-lt
Title: "Colorectal - Local Polypectomy Codes CS"
Description: "Local codes for polypectomy techniques, instruments, and hydropreparation used in the colorectal screening program."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^caseSensitive = true

// Lumen Filling Options
* #fill-air "Filling the space with air"
* #fill-water "Filling the container with water"

// Instrument & Energy Options
* #inst-loop-hot "With a loop - Hot method"
* #inst-loop-cold "With a loop - Cold method"
* #inst-pliers "With pliers"

// Excision Method Options
* #exc-en-bloc "En bloc"
* #exc-parts "Parts (Piecemeal)"

// Hydropreparation Options
* #hydro-pending "Hydropreparation pending (None)"
* #hydro-phys-sol "Physiological solution"
* #hydro-adrenaline "Adrenaline"
* #hydro-meth-blue "Methylene blue"
* #hydro-gelofusine "Gelofusine"

// Histology Status
* #hist-sent "Sent for histological examination"
* #hist-not-sent "Not sent"

ValueSet: PolypectomyLumenFillingLtColorectal
Id: polypectomy-lumen-filling-lt-colorectal
Title: "Colorectal - Polypectomy Lumen Filling VS"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ColorectalPolypectomyCodesLt#fill-air
* ColorectalPolypectomyCodesLt#fill-water

ValueSet: PolypectomyInstrumentLtColorectal
Id: polypectomy-instrument-lt-colorectal
Title: "Colorectal - Polypectomy Instrument VS"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ColorectalPolypectomyCodesLt#inst-loop-hot
* ColorectalPolypectomyCodesLt#inst-loop-cold
* ColorectalPolypectomyCodesLt#inst-pliers

ValueSet: PolypectomyExcisionMethodLtColorectal
Id: polypectomy-excision-method-lt-colorectal
Title: "Colorectal - Polypectomy Excision Method VS"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ColorectalPolypectomyCodesLt#exc-en-bloc
* ColorectalPolypectomyCodesLt#exc-parts

ValueSet: PolypectomyHydroprepLtColorectal
Id: polypectomy-hydroprep-lt-colorectal
Title: "Colorectal - Polypectomy Hydropreparation VS"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ColorectalPolypectomyCodesLt#hydro-pending
* ColorectalPolypectomyCodesLt#hydro-phys-sol
* ColorectalPolypectomyCodesLt#hydro-adrenaline
* ColorectalPolypectomyCodesLt#hydro-meth-blue
* ColorectalPolypectomyCodesLt#hydro-gelofusine

ValueSet: PolypectomyHistologyStatusLtColorectal
Id: polypectomy-histology-status-lt-colorectal
Title: "Colorectal - Polypectomy Histology Status VS"
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ColorectalPolypectomyCodesLt#hist-sent
* ColorectalPolypectomyCodesLt#hist-not-sent

Extension: ProcedureMethod
Id: procedure-method
Title: "Procedure Method"
Description: "The method or technique used to perform the procedure."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* value[x] only CodeableConcept

Profile: ProcedurePolypectomyLtColorectal
Parent: Procedure 
Id: procedure-polypectomy-lt-colorectal
Title: "Colonic Polypectomy Procedure (LT Colorectal)"
Description: "Profile enforcing the mandatory documentation of the polypectomy technique, tools, and histology outcome using local codes."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* category = $sct#387713003 "Surgical procedure (procedure)"
* code = $sct#274025005 "Colonic polypectomy (procedure)"
* subject 1..1 MS

// 1. Excision Method (En Bloc vs Parts) mapped via Extension
* extension contains ProcedureMethod named method 1..1 MS
* extension[method].valueCodeableConcept from PolypectomyExcisionMethodLtColorectal (required)

// 2. Histology Outcome
* outcome 1..1 MS
* outcome from PolypectomyHistologyStatusLtColorectal (required)

// 3. Lumen Filling, Instrument, and Hydroprep
* used ^slicing.discriminator.type = #value
* used ^slicing.discriminator.path = "concept"
* used ^slicing.rules = #open

* used contains
    lumenFilling 1..1 MS and
    instrument 1..1 MS and
    hydroprep 1..* MS

* used[lumenFilling] from PolypectomyLumenFillingLtColorectal (required)
* used[instrument] from PolypectomyInstrumentLtColorectal (required)
* used[hydroprep] from PolypectomyHydroprepLtColorectal (required)

Instance: procedure-polypectomy-example
InstanceOf: ProcedurePolypectomyLtColorectal
Usage: #example
Title: "Procedure: Colorectal - Polypectomy (Cold Snare, En Bloc, Adrenaline)"
Description: "Example recording the removal of a polyp perfectly conforming to the strict Polypectomy profile."
* status = #completed
* category = $sct#387713003 "Surgical procedure (procedure)"
* code = $sct#274025005 "Colonic polypectomy (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"

* reason.reference = Reference(observation-polyp-found-example)

// 1. Method (En bloc) - Populated using the extension
* extension[method].valueCodeableConcept = ColorectalPolypectomyCodesLt#exc-en-bloc "En bloc"

// 2. Lumen Filling (Air)
* used[lumenFilling].concept = ColorectalPolypectomyCodesLt#fill-air "Filling the space with air"

// 3. Instrument / Energy (Cold Snare loop)
* used[instrument].concept = ColorectalPolypectomyCodesLt#inst-loop-cold "With a loop - Cold method"

// 4. Hydropreparation (Adrenaline)
* used[hydroprep].concept = ColorectalPolypectomyCodesLt#hydro-adrenaline "Adrenaline"

// 5. Histology Status (Sent) 
* outcome = ColorectalPolypectomyCodesLt#hist-sent "Sent for histological examination"