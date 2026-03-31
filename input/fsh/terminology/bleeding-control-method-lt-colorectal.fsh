ValueSet: BleedingControlMethodVS
Id: bleeding-control-method
Title: "Bleeding Control Method"
Description: "Methods used for controlling bleeding during or after colonoscopy."
* ^url = $bleeding-control-method-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#21147007 "Closure by clip (procedure)"
* $sct#313191000 "Injection of epinephrine (procedure)"
* SnomedExtensionLtColorectalCS#bleeding-clip "Hemostatic clipping"
* SnomedExtensionLtColorectalCS#bleeding-adrenaline-injection "Adrenaline injection"
* SnomedExtensionLtColorectalCS#bleeding-coagulation "Thermal coagulation"
* SnomedExtensionLtColorectalCS#bleeding-other "Other bleeding control method"
