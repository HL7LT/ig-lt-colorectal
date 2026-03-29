// ValueSet moved to terminology/colorectal-conclusion-lt-colorectal.fsh as ColorectalConclusionVS


Instance: observation-conclusion-normal-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Conclusion (Normal)"
Description: "Records the final conclusion of the procedure as Normal."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#371524004 "Clinical report (record artifact)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#313170008 "Colonoscopy normal (finding)"
* note[0].text = "No structural pathologies were found in the examined segments."

Instance: observation-conclusion-polyps-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Conclusion (Polyps & Diverticulosis)"
Description: "Records the final conclusion showing Polyps and Diverticulosis."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#371524004 "Clinical report (record artifact)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#399505005 "Polyp of large intestine (disorder)"
* note[0].text = "Uncomplicated diverticula of various sizes in the sigmoid colon."
* note[1].text = "No other structural pathologies were found in the examined segments."