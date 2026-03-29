ValueSet: MolecularTestResultVS
Id: molecular-test-result
Title: "Molecular Test Result"
Description: "Result values for molecular testing in the colorectal cancer screening program."
* ^url = $molecular-test-result-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* SnomedExtensionLtColorectalCS#mol-postponed "Postponed"
* SnomedExtensionLtColorectalCS#mol-detected "Detected mutation"
* SnomedExtensionLtColorectalCS#mol-not-detected "Undefined mutation"
* SnomedExtensionLtColorectalCS#mol-set "Set (MSI)"
