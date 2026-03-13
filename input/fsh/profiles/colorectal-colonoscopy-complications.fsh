CodeSystem: SydneyClassificationCsLtColorectal
Id: sydney-classification-cs-lt-colorectal
Title: "Colorectal - Sydney Classification for Colon Wall Injury"
Description: "Sydney classification for deep mural injury (DMI) of the colon occurring during colonoscopy. The classification describes the severity of injury to the colon wall layers and helps guide appropriate management."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^caseSensitive = true
* ^content = #complete

* #type-1 "Sydney DMI Type I"
* #type-1 ^definition = "Type I: Intact submucosa and muscularis propria with superficial mucosal injury only. No specific treatment is usually required."

* #type-2 "Sydney DMI Type II"
* #type-2 ^definition = "Type II: Loss of clear distinction between submucosa and muscularis propria with focal loss of the submucosal plane. Endoscopic closure is usually suggested."

* #type-3 "Sydney DMI Type III"
* #type-3 ^definition = "Type III: Visible target sign indicating injury to the muscularis propria. Endoscopic closure is required."

* #type-4 "Sydney DMI Type IV"
* #type-4 ^definition = "Type IV: Clearly visible small-to-medium perforation, typically surrounded by a white cautery ring, without significant fecal contamination."

* #type-5 "Sydney DMI Type V"
* #type-5 ^definition = "Type V: Large perforation with a visible hole and fecal contamination of the peritoneal cavity."


// ValueSets

ValueSet: ColonoscopyComplicationPresenceLtColorectal
Id: colonoscopy-complication-presence-lt-colorectal
Title: "Colorectal - Diagnostic Colonoscopy Complication Presence VS"
Description: "Indicates whether there was a complication after diagnostic colonoscopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#373067005 "No (qualifier value)"
* $sct#373066001 "Yes (qualifier value)"


ValueSet: ColonoscopyComplicationTypeLtColorectal
Id: colonoscopy-complication-type-lt-colorectal
Title: "Colorectal - Diagnostic Colonoscopy Complication Type VS"
Description: "Complications that may occur after diagnostic colonoscopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#95540002 "Hemorrhage of colon (disorder)"
* $sct#33211000 "Complication of anesthesia (disorder)"
* $sct#976220 "Colonoscopic control of colon bleeding (procedure)" //will be added in newer SCT version
* $sct#269304002 "Accidental organ perforation during a procedure (disorder)"
* $sct#303078007 "Perforation of large intestine (disorder)"


ValueSet: ColonoscopyBleedingControlLtColorectal
Id: colonoscopy-bleeding-control-lt-colorectal
Title: "Colorectal - Diagnostic Colonoscopy Bleeding Control VS"
Description: "Methods used for colonoscopic bleeding control after diagnostic colonoscopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#21147007 "Closure by clip (procedure)"
* $sct#313191000 "Injection of epinephrine (procedure)"


ValueSet: SydneyClassificationLtColorectal
Id: sydney-classification-lt-colorectal
Title: "Colorectal - Sydney Classification VS"
Description: "Sydney classification types for colon wall injury during diagnostic colonoscopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* include codes from system SydneyClassificationCsLtColorectal


ValueSet: ColonoscopyWallInjuryActionLtColorectal
Id: colonoscopy-wall-injury-action-lt-colorectal
Title: "Colorectal - Diagnostic Colonoscopy Wall Injury Action VS"
Description: "Actions taken after colon wall injury during diagnostic colonoscopy."
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#21147007 "Closure by clip (procedure)"
* $sct#18557009 "Closure by suture (procedure)"
* $sct#82874003 "Operation on colon (procedure)"

// Profiles

Profile: ObservationDiagnosticColonoscopyComplicationPresenceLt
Parent: LTBaseObservation
Id: observation-diagnostic-colonoscopy-complication-presence-lt
Title: "Colorectal - Diagnostic Colonoscopy Complication Presence Observation"
Description: "Profile for recording whether there was a complication after diagnostic colonoscopy."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* code MS

* subject 1..1 MS
* subject only Reference(LTBasePatient)

* performer MS
* effective[x] MS

* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColonoscopyComplicationPresenceLtColorectal (required)


Profile: ObservationDiagnosticColonoscopyComplicationTypeLt
Parent: LTBaseObservation
Id: observation-diagnostic-colonoscopy-complication-type-lt
Title: "Colorectal - Diagnostic Colonoscopy Complication Type Observation"
Description: "Profile for recording the complication type after diagnostic colonoscopy. This observation is recorded only if complication presence is Yes."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* code MS

* subject 1..1 MS
* subject only Reference(LTBasePatient)

* performer MS
* effective[x] MS

* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColonoscopyComplicationTypeLtColorectal (required)


Profile: ObservationDiagnosticColonoscopyBleedingControlLt
Parent: LTBaseObservation
Id: observation-diagnostic-colonoscopy-bleeding-control-lt
Title: "Colorectal - Diagnostic Colonoscopy Bleeding Control Observation"
Description: "Profile for recording how colonoscopic bleeding control was performed after diagnostic colonoscopy. This observation is recorded only if colonoscopic control of colon bleeding was selected as the complication type."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#976220 "Colonoscopic control of colon bleeding (procedure)"
* code MS

* subject 1..1 MS
* subject only Reference(LTBasePatient)

* performer MS
* effective[x] MS

* value[x] only CodeableConcept
* value[x] 1..1 MS
* valueCodeableConcept from ColonoscopyBleedingControlLtColorectal (required)


Profile: ObservationDiagnosticColonoscopyWallInjuryDetailLt
Parent: LTBaseObservation
Id: observation-diagnostic-colonoscopy-wall-injury-detail-lt
Title: "Colorectal - Diagnostic Colonoscopy Wall Injury Detail Observation"
Description: "Profile for recording Sydney classification and action taken after colon wall injury during diagnostic colonoscopy. This observation is recorded only if accidental organ perforation during a procedure or perforation of large intestine was selected as the complication type."
* ^status = #active
* ^publisher = "HL7 Lithuania"

* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* code MS

* subject 1..1 MS
* subject only Reference(LTBasePatient)

* performer MS
* effective[x] MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed

* component contains
    sydneyClassification 1..1 MS and
    actionTaken 1..1 MS

* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].value[x] only CodeableConcept
* component[sydneyClassification].value[x] 1..1 MS
* component[sydneyClassification].valueCodeableConcept from SydneyClassificationLtColorectal (required)

* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].value[x] only CodeableConcept
* component[actionTaken].value[x] 1..1 MS
* component[actionTaken].valueCodeableConcept from ColonoscopyWallInjuryActionLtColorectal (required)


// Examples - Presence

Instance: obs-dc-comp-pres-no-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationPresenceLt
Usage: #example
Title: "Observation: Colorectal - Diagnostic Colonoscopy Complication Presence No Example"
Description: "Example of an observation recording that no complication occurred after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#373067005 "No (qualifier value)"


Instance: obs-dc-comp-pres-yes-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationPresenceLt
Usage: #example
Title: "Observation: Colorectal - Diagnostic Colonoscopy Complication Presence Yes Example"
Description: "Example of an observation recording that a complication occurred after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#373066001 "Yes (qualifier value)"


// Examples - Complication Type

Instance: obs-dc-comp-hemorrhage-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationTypeLt
Usage: #example
Title: "Observation: Colorectal - Hemorrhage After Diagnostic Colonoscopy Example"
Description: "Example of an observation recording hemorrhage of colon after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#95540002 "Hemorrhage of colon (disorder)"


Instance: obs-dc-comp-anes-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationTypeLt
Usage: #example
Title: "Observation: Colorectal - Anesthesia Complication After Diagnostic Colonoscopy Example"
Description: "Example of an observation recording complication of anesthesia after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#33211000 "Complication of anesthesia (disorder)"


Instance: obs-dc-comp-bleedctrl-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationTypeLt
Usage: #example
Title: "Observation: Colorectal - Colonoscopic Control of Colon Bleeding Example"
Description: "Example of an observation recording colonoscopic control of colon bleeding after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#976220 "Colonoscopic control of colon bleeding (procedure)"


Instance: obs-dc-comp-perf-proc-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationTypeLt
Usage: #example
Title: "Observation: Colorectal - Accidental Organ Perforation During Procedure Example"
Description: "Example of an observation recording accidental organ perforation during a procedure after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#269304002 "Accidental organ perforation during a procedure (disorder)"


Instance: obs-dc-comp-largeperf-ex
InstanceOf: ObservationDiagnosticColonoscopyComplicationTypeLt
Usage: #example
Title: "Observation: Colorectal - Perforation of Large Intestine Example"
Description: "Example of an observation recording perforation of large intestine after diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#129656002 "Complication of diagnostic procedure (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#303078007 "Perforation of large intestine (disorder)"


// Examples - Bleeding Control Detail

Instance: obs-dc-bleed-clip-ex
InstanceOf: ObservationDiagnosticColonoscopyBleedingControlLt
Usage: #example
Title: "Observation: Colorectal - Bleeding Control by Clip Example"
Description: "Example showing closure by clip as the method used for colonoscopic bleeding control."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#976220 "Colonoscopic control of colon bleeding (procedure)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#21147007 "Closure by clip (procedure)"


Instance: obs-dc-bleed-epi-ex
InstanceOf: ObservationDiagnosticColonoscopyBleedingControlLt
Usage: #example
Title: "Observation: Colorectal - Bleeding Control by Epinephrine Example"
Description: "Example showing injection of epinephrine as the method used for colonoscopic bleeding control."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#976220 "Colonoscopic control of colon bleeding (procedure)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* valueCodeableConcept = $sct#313191000 "Injection of epinephrine (procedure)"


// Examples - Wall Injury Detail

Instance: obs-dc-wallinj-clip-t3-ex
InstanceOf: ObservationDiagnosticColonoscopyWallInjuryDetailLt
Usage: #example
Title: "Observation: Colorectal - Wall Injury Detail Type 3 with Clip Example"
Description: "Example showing Sydney classification type 3 and closure by clip after colon wall injury during diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].valueCodeableConcept = SydneyClassificationCsLtColorectal#type-3 "Sydney DMI Type III"
* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].valueCodeableConcept = $sct#21147007 "Closure by clip (procedure)"

Instance: obs-dc-wallinj-suture-t4-ex
InstanceOf: ObservationDiagnosticColonoscopyWallInjuryDetailLt
Usage: #example
Title: "Observation: Colorectal - Wall Injury Detail Type 4 with Suture Example"
Description: "Example showing Sydney classification type 4 and closure by suture after colon wall injury during diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].valueCodeableConcept = SydneyClassificationCsLtColorectal#type-4 "Sydney DMI Type IV"
* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].valueCodeableConcept = $sct#18557009 "Closure by suture (procedure)"


Instance: obs-dc-wallinj-op-t5-ex
InstanceOf: ObservationDiagnosticColonoscopyWallInjuryDetailLt
Usage: #example
Title: "Observation: Colorectal - Wall Injury Detail Type 5 with Operation Example"
Description: "Example showing Sydney classification type 5 and operation on colon after colon wall injury during diagnostic colonoscopy."
* status = #final
* category = $observation-category#procedure "Procedure"
* code = $sct#303078007 "Perforation of large intestine (disorder)"
* subject = Reference(example-patient-male)
* performer = Reference(example-practitioner)
* effectiveDateTime = "2026-03-12"
* component[sydneyClassification].code = $sct#303078007 "Perforation of large intestine (disorder)"
* component[sydneyClassification].valueCodeableConcept = SydneyClassificationCsLtColorectal#type-5 "Sydney DMI Type V"
* component[actionTaken].code = $sct#129271007 "Management - action (qualifier value)"
* component[actionTaken].valueCodeableConcept = $sct#82874003 "Operation on colon (procedure)"