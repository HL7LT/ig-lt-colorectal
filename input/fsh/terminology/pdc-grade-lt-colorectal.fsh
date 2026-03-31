ValueSet: PdcGradeVS
Id: pdc-grade
Title: "Poorly Differentiated Clusters (PDC) Grade"
Description: "Grading of poorly differentiated clusters in colorectal carcinoma."
* ^url = $pdc-grade-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* include codes from system SnomedExtensionLtColorectalCS where code regex "pdc-.*"
