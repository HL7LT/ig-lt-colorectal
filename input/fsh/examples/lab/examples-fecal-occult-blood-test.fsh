Instance: specimen-stool-fobt-example
InstanceOf: Specimen
Usage: #example
Title: "Specimen: Stool for FOBT (example)"
Description: "Example of a stool specimen used for fecal occult blood testing."
* status = #available
* type = $sct#119339001 "Stool specimen"

Instance: observation-fobt-qualitative-not-detected-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: FOBT Qualitative Not Detected (example)"
Description: "Example of a qualitative fecal occult blood test result with 'Not detected' value."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#80372-6 "Hemoglobin.gastrointestinal [Presence] in Stool by Rapid immunoassay"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-stool-fobt-example)
* valueCodeableConcept = $sct#260415000 "Not detected (qualifier value)"

Instance: observation-fobt-qualitative-detected-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: FOBT Qualitative Detected (example)"
Description: "Example of a qualitative fecal occult blood test result with 'Detected' value."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#80372-6 "Hemoglobin.gastrointestinal [Presence] in Stool by Rapid immunoassay"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-stool-fobt-example)
* valueCodeableConcept = $sct#260373001 "Detected (qualifier value)"

Instance: observation-fobt-quantitative-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: FOBT Quantitative (example)"
Description: "Example of a quantitative fecal occult blood test result."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#27396-1 "Hemoglobin.gastrointestinal [Mass/mass] in Stool"
* subject = Reference(patient-male-example)
* effectiveDateTime = "2026-02-26"
* specimen = Reference(specimen-stool-fobt-example)
* valueQuantity = 12.3 'ug/L' "µg/L"

Instance: diagnosticreport-fobt-qualitative-not-detected-example
InstanceOf: FecalOccultBloodTestReportLtColorectal
Usage: #example
Title: "Diagnostic Report: FOBT Qualitative Not Detected (example)"
Description: "Example of a diagnostic report for a qualitative fecal occult blood test with 'Not detected' result."
* status = #final
* subject = Reference(patient-male-example)
* code = $loinc#80372-6 "Hemoglobin.gastrointestinal [Presence] in Stool by Rapid immunoassay"
* effectiveDateTime = "2026-02-26"
* performer = Reference(practitioner-example)
* specimen = Reference(specimen-stool-fobt-example)
* result = Reference(observation-fobt-qualitative-not-detected-example)
* conclusion = "No fecal occult blood detected."
