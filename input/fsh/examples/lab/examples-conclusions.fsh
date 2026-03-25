ValueSet: ColorectalConclusionLtColorectal
Id: colorectal-conclusion-lt-colorectal
Title: "Colorectal - Diagnostic Conclusions VS"
Description: "SNOMED CT codes representing the final diagnostic conclusions of the colonoscopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#313170008 "Colonoscopy normal (finding)"
* $sct#399505005 "Polyp of large intestine (disorder)"
* $sct#363510005 "Malignant tumor of large intestine (disorder)"
* $sct#24526004 "Inflammatory bowel disease (disorder)" 
* $sct#64766004 "Ulcerative colitis (disorder)" 
* $sct#34000006 "Crohn's disease (disorder)"
* $sct#30588004 "Ischemic colitis (disorder)" 
* $sct#733657002 "Diverticulosis of colon (finding)"
* $sct#70153002 "Hemorrhoids (disorder)"
* $sct#413245000 "Bleeding of unknown origin (finding)"
* $sct#254589009 "Intestinal polyposis syndrome (disorder)"

//update workflow about what VS is used for conclusion, also separate the VS and instances in appropriate folders


Instance: observation-conclusion-normal-example
InstanceOf: ObservationLt
Usage: #example
Title: "Observation: Colorectal - Conclusion (Normal)"
Description: "Records the final conclusion of the procedure as Normal."
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#371524004 "Clinical report conclusion (qualifier value)"
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
* code = $sct#371524004 "Clinical report conclusion (qualifier value)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#399505005 "Polyp of large intestine (disorder)"
* note[0].text = "Uncomplicated diverticula of various sizes in the sigmoid colon."
* note[1].text = "No other structural pathologies were found in the examined segments."