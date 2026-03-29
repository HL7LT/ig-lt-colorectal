ValueSet: TumorBuddingVS
Id: tumor-budding
Title: "Tumor Budding"
Description: "Tumor budding classification for colorectal carcinoma."
* ^url = $tumor-budding-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* include codes from system SnomedExtensionLtColorectalCS where code regex "budding-.*"
