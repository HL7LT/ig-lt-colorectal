Profile: ObservationColonoscopeReachLt
Parent: LTBaseObservation
Id: observation-colonoscope-reach-lt
Title: "Colorectal - Colonoscope Reach (Inspected Until) Observation"
Description: "Profile for recording how far the colonoscope reached during a colorectal cancer screening program. Used to calculate the Cecum intubation rate."
* ^status = #active
* ^publisher = "HL7 Lithuania"
* category = $observation-category#procedure "Procedure"
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* code MS
* subject 1..1 MS
* subject only Reference(LTBasePatient)
* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColonoscopeReachLtColorectal (required)


ValueSet: ColonoscopeReachLtColorectal
Id: colonoscope-reach-lt-colorectal
Title: "Colorectal - Colonoscope Reach"
Description: "SNOMED CT anatomical structures identifying how far the colonoscope reached during the examination."
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
* $sct#49832006 "Rectosigmoid junction structure (body structure)"
* $sct#34402009 "Rectum structure (body structure)"
* $sct#53505006 "Anal structure (body structure)"
* $sct#34381000 "Anal canal structure (body structure)"
* $sct#264022007 "Ileocolic junction (morphologic abnormality)"
* $sct#263976001 "Colocolic junction (morphologic abnormality)"

Instance: observation-colonoscope-reach-cecum-example
InstanceOf: ObservationColonoscopeReachLt
Usage: #example
Title: "Observation: Colorectal - Colonoscope Reach Example (Cecum)"
Description: "Example of an observation recording that the colonoscope reached the Cecum."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#73761001 "Colonoscopy (procedure)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#32713005 "Cecum structure (body structure)"

/*

Instance: observation-colonoscope-reach-ileum-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - Colonoscope Reach Example (Terminal Ileum)"
Description: "Example of an observation recording that the colonoscope reached the Terminal ileum."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#85774003 "Structure of distal portion of ileum (body structure)"

Instance: observation-colonoscope-reach-splenic-example
InstanceOf: LTBaseObservation
Usage: #example
Title: "Observation: Colorectal - Colonoscope Reach Example (Splenic Flexure)"
Description: "Example of an observation recording that the colonoscope only reached the Splenic flexure (incomplete examination)."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#444783004 "Screening colonoscopy (procedure)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-02-26"
* valueCodeableConcept = $sct#72592005 "Structure of left colic flexure (body structure)"

*/
