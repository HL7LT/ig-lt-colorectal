Instance: observation-msi-detected-example
InstanceOf: MolecularTestResultLtColorectal
Usage: #example
Title: "Observation: MSI - Set (example)"
Description: "Example of a microsatellite instability (MSI) test with established result."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = SnomedExtensionLtColorectalCS#msi-test "MSI (Microsatellite instability study)"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = SnomedExtensionLtColorectalCS#mol-set "Set (MSI)"

Instance: observation-kras-detected-example
InstanceOf: MolecularTestResultLtColorectal
Usage: #example
Title: "Observation: KRAS - Detected mutation (example)"
Description: "Example of a KRAS mutation test with detected mutation result."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = SnomedExtensionLtColorectalCS#kras-test "KRAS mutation test"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = SnomedExtensionLtColorectalCS#mol-detected "Detected mutation"

Instance: observation-nras-not-detected-example
InstanceOf: MolecularTestResultLtColorectal
Usage: #example
Title: "Observation: NRAS - Undefined mutation (example)"
Description: "Example of an NRAS mutation test with no mutation detected."
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = SnomedExtensionLtColorectalCS#nras-test "NRAS mutation test"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = SnomedExtensionLtColorectalCS#mol-not-detected "Undefined mutation"

Instance: observation-braf-postponed-example
InstanceOf: MolecularTestResultLtColorectal
Usage: #example
Title: "Observation: BRAF V600E - Postponed (example)"
Description: "Example of a BRAF V600E mutation test that has been postponed."
* status = #registered
* category = $observation-category#laboratory "Laboratory"
* code = SnomedExtensionLtColorectalCS#braf-v600e-test "BRAF V600E mutation test"
* subject = Reference(patient-male-example)
* performer = Reference(practitioner-example)
* effectiveDateTime = "2026-03-15"
* valueCodeableConcept = SnomedExtensionLtColorectalCS#mol-postponed "Postponed"
