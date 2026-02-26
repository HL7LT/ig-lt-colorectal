Profile: FecalOccultBloodTestLtColorectal
Parent: LTBaseObservation
Id: fecal-occult-blood-test-lt-colorectal
Title: "Fecal Occult Blood Test (LT Colorectal)"
Description: "Fecal occult blood (hemoglobin) laboratory observation used in the colorectal cancer prevention program. Supports qualitative rapid immunochemical and quantitative immunochemical methods."
* ^publisher = "HL7 Lithuania"

* status 1..1
* status = #final (exactly)

* category 1..1
* category = $observation-category#laboratory (exactly)

* code 1..1
* code from FecalOccultBloodTestCodesLtColorectal (required)

* subject 1..1

* effective[x] 1..1
* effective[x] only dateTime

* specimen 1..1
* specimen only Reference(Specimen)

* value[x] 1..1
* value[x] only CodeableConcept or Quantity

ValueSet: FecalOccultBloodTestCodesLtColorectal
Id: fecal-occult-blood-test-codes-lt-colorectal
Title: "ValueSet: Colorectal - Fecal Occult Blood Test (LT)"
Description: "LOINC codes for fecal occult blood (hemoglobin) testing used in the colorectal cancer prevention program."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $loinc#80372-6 "Hemoglobin [Presence] in Stool from gastrointestinal by Rapid immunoassay"
* $loinc#27396-1 "Hemoglobin [Mass/mass] in Stool from gastrointestinal"

// Example Specimen (stool)
Instance: specimen-colorectal-fobt-example
InstanceOf: Specimen
Usage: #example
Title: "Specimen: Colorectal - Stool Specimen Example"
* status = #available
* type = $sct#119339001 "Stool specimen"

// Examples
Instance: observation-colorectal-fobt-qualitative-not-detected-example
InstanceOf: FecalOccultBloodTestLtColorectal
Usage: #example
Title: "Observation: Colorectal - FOBT Qualitative Not Detected Example"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#80372-6
* subject = Reference(example-patient-male)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-colorectal-fobt-example)
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"

Instance: observation-colorectal-fobt-qualitative-detected-example
InstanceOf: FecalOccultBloodTestLtColorectal
Usage: #example
Title: "Observation: Colorectal - FOBT Qualitative Detected Example"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#80372-6
* subject = Reference(example-patient-male)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-colorectal-fobt-example)
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"

Instance: observation-colorectal-fobt-quantitative-example
InstanceOf: FecalOccultBloodTestLtColorectal
Usage: #example
Title: "Observation: Colorectal - FOBT Quantitative Example"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#27396-1
* subject = Reference(example-patient-male)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-colorectal-fobt-example)
* valueQuantity = 12.3 'ug/L' "µg/L"