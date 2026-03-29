Profile: MolecularTestResultLtColorectal
Parent: ObservationLt
Id: molecular-test-result-lt-colorectal
Title: "Molecular Test Result (LT Colorectal)"
Description: """
Profile for recording molecular test results in the Lithuanian colorectal cancer
screening program. Covers MSI (microsatellite instability), KRAS, NRAS, and
BRAF V600E mutation testing. Each test is a separate Observation instance.

Default for adenocarcinoma: all molecular tests are automatically indicated
but may be postponed.
"""
* ^url = $molecular-test-result-lt-colorectal-url
* ^status = #active

* category 1..1
* category = $observation-category#laboratory "Laboratory"

* code 1..1 MS
* code from MolecularTestTypeVS (required)
* code ^short = "Type of molecular test: MSI, KRAS, NRAS, or BRAF V600E"

* subject 1..1 MS
* subject only Reference(PatientLt)

* effective[x] only dateTime
* effective[x] MS

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from MolecularTestResultVS (required)
* valueCodeableConcept ^short = "Test result: Postponed, Detected mutation, Undefined mutation, or Set (MSI)"

* specimen MS
* specimen ^short = "Reference to the tissue specimen used for testing"

* performer MS

* note MS
* note ^short = "Additional details about the molecular test"
