ValueSet: FecalOccultBloodTestCodesLtColorectal
Id: fecal-occult-blood-test-codes-lt-colorectal
Title: "Colorectal - Fecal Occult Blood Test VS"
Description: "LOINC codes for fecal occult blood (hemoglobin) testing."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $loinc#80372-6 "Hemoglobin [Presence] in Stool from gastrointestinal by Rapid immunoassay"
* $loinc#27396-1 "Hemoglobin [Mass/mass] in Stool from gastrointestinal"

ValueSet: FecalOccultBloodQualitativeResultLtColorectal
Id: fecal-occult-blood-qualitative-result-lt-colorectal
Title: "Colorectal - FOBT Qualitative Result VS"
Description: "Qualitative result values for fecal occult blood testing."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* $sct#260373001 "Detected (qualifier value)"
* $sct#260415000 "Not detected (qualifier value)"

// Example Specimen (stool)
Instance: specimen-colorectal-fobt-example
InstanceOf: Specimen
Usage: #example
Title: "Specimen: Colorectal - Stool Specimen Example"
Description: "Example of a stool specimen used for fecal occult blood testing."
* status = #available
* type = $sct#119339001 "Stool specimen"

// Examples
Instance: observation-colorectal-fobt-qualitative-not-detected-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - FOBT Qualitative Not Detected Example"
Description: "Example of a qualitative fecal occult blood test result with 'Not detected' value."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#80372-6 "Hemoglobin [Presence] in Stool from gastrointestinal by Rapid immunoassay"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-colorectal-fobt-example)
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"


Instance: observation-colorectal-fobt-qualitative-detected-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - FOBT Qualitative Detected Example"
Description: "Example of a qualitative fecal occult blood test result with 'Detected' value."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#80372-6 "Hemoglobin [Presence] in Stool from gastrointestinal by Rapid immunoassay"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-colorectal-fobt-example)
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"


Instance: observation-colorectal-fobt-quantitative-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - FOBT Quantitative Example"
Description: "Example of a quantitative fecal occult blood test result."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#27396-1 "Hemoglobin [Mass/mass] in Stool from gastrointestinal"
* subject = Reference(example-patient-male)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-colorectal-fobt-example)
* valueQuantity = 12.3 'ug/L' "µg/L"