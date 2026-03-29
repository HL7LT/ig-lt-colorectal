ValueSet: ColorectalAnatomyVS
Id: colorectal-anatomy
Title: "Colorectal - Shared Anatomy VS"
Description: "Shared SNOMED CT codes representing the anatomical segments of the colon and rectum. Used for recording locations of tumors, polyps, and colonoscope reach."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#85774003 "Structure of distal portion of ileum (body structure)"
* $sct#32713005 "Cecum structure (body structure)"
* $sct#9040008 "Ascending colon structure (body structure)"
* $sct#48338005 "Structure of right colic flexure (body structure)"
* $sct#485005 "Transverse colon structure (body structure)"
* $sct#72592005 "Structure of left colic flexure (body structure)"
* $sct#32622004 "Descending colon structure (body structure)"
* $sct#60184004 "Sigmoid colon structure (body structure)"
* $sct#34402009 "Rectum structure (body structure)"

//use an international yes no VS
ValueSet: YesNoVS
Id: yes-no
Title: "Colorectal - Yes/No VS"
Description: "Standard Yes/No qualifier values for the Colorectal screening program."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#373066001 "Yes (qualifier value)"
* $sct#373067005 "No (qualifier value)"


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

// to differ which text field is local or private or description
* note[0].text = "Local notes: Tumor appears highly vascularized."
* note[1].text = "Description: Large mass obstructing approx 40% of the lumen."


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