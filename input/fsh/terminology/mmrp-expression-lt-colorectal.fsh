ValueSet: MmrpExpressionVS
Id: mmrp-expression
Title: "MMRP Expression Status"
Description: "Mismatch repair protein expression status (microsatellite instability assessment) for colorectal carcinoma."
* ^url = $mmrp-expression-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#443412009 "Degree of microsatellite instability (observable entity)"
* SnomedExtensionLtColorectalCS#mmrp-normal "Normal expression (MMR proficient, MSS)"
* SnomedExtensionLtColorectalCS#mmrp-loss "Loss of expression (MMR deficient, MSI)"
* SnomedExtensionLtColorectalCS#mmrp-invaluable "MMRP Invaluable"
* SnomedExtensionLtColorectalCS#mmrp-postponed "MMRP Postponed"
* SnomedExtensionLtColorectalCS#mmrp-undefined "MMRP Undefined (MSS)"
