// review intersection with patology IG
Instance: observation-tumor-found-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Tumor (Found)"
Description: "Example recording the presence of a tumor, including its location and description."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#363406005 "Malignant neoplasm of colon (disorder)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"
* bodySite = $sct#60184004 "Sigmoid colon structure (body structure)"
* component[0].code = $sct#371524004 "Clinical report (record artifact)"
* component[0].valueString = "Large mass obstructing approx 40% of the lumen. Tumor appears highly vascularized."


Instance: procedure-tumor-biopsy-postponed-example
InstanceOf: Procedure
Usage: #example
Title: "Procedure: Colorectal - Tumor Biopsy (Postponed)"
Description: "Example recording that the biopsy of the discovered tumor was postponed."
* status = #not-done 
* code = $sct#80050006 "Endoscopic biopsy of large intestine (procedure)"
* subject = Reference(patient-male-example)
* occurrenceDateTime = "2026-02-26"
* reason.reference = Reference(observation-tumor-found-example)
* statusReason.text = "Tumor biopsy postponed due to risk of excessive bleeding."