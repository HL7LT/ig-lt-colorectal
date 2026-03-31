Profile: HistologicalDiagnosisLtColorectal
Parent: ObservationLt
Id: histological-diagnosis-lt-colorectal
Title: "Histological Diagnosis (LT Colorectal)"
Description: "Profile for recording histological diagnosis results from polyp or tumor biopsy specimens in the Lithuanian colorectal cancer screening program. Captures histological type, dysplasia grade, radicalism of removal, tumor budding, invasion depth, and MMR protein expression."
* ^url = $histological-diagnosis-lt-colorectal-url
* ^status = #active

* code = $sct#714797009 "Histologic test (procedure)"
* code MS
* subject 1..1 MS
* subject only Reference(PatientLt)
* specimen MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component contains
    histologicalType 0..1 MS and
    dysplasiaGrade 0..1 MS and
    radicalismOfRemoval 0..1 MS and
    tumorBudding 0..1 MS and
    invasionDepth 0..1 MS and
    mmrpExpression 0..1 MS and
    pdcGrade 0..1 MS and
    intravascularInvasion 0..1 MS and
    differentiationGrade 0..1 MS and
    sccGrade 0..1 MS

* component[histologicalType].code.text = "Histological diagnosis"
* component[histologicalType].value[x] only CodeableConcept
* component[histologicalType].valueCodeableConcept from ColorectalHistologicalDiagnosisVS (required)
* component[histologicalType] ^short = "Histological type of the specimen"

* component[dysplasiaGrade].code.text = "Dysplasia grade"
* component[dysplasiaGrade].value[x] only CodeableConcept
* component[dysplasiaGrade].valueCodeableConcept from DysplasiaGradeVS (required)
* component[dysplasiaGrade] ^short = "Grade of dysplasia"

* component[radicalismOfRemoval].code.text = "Radicalism of removal"
* component[radicalismOfRemoval].value[x] only CodeableConcept
* component[radicalismOfRemoval].valueCodeableConcept from RadicalismOfRemovalVS (required)
* component[radicalismOfRemoval] ^short = "Completeness of polyp removal (R0, R1, Rx)"

* component[tumorBudding].code.text = "Tumor budding"
* component[tumorBudding].value[x] only CodeableConcept
* component[tumorBudding].valueCodeableConcept from TumorBuddingVS (required)
* component[tumorBudding] ^short = "Tumor budding assessment"

* component[invasionDepth].code.text = "Invasion depth"
* component[invasionDepth].value[x] only CodeableConcept
* component[invasionDepth].valueCodeableConcept from InvasionDepthVS (required)
* component[invasionDepth] ^short = "Depth of submucosal invasion"

* component[mmrpExpression].code.text = "MMR protein expression"
* component[mmrpExpression].value[x] only CodeableConcept
* component[mmrpExpression].valueCodeableConcept from MmrpExpressionVS (required)
* component[mmrpExpression] ^short = "Mismatch repair protein (MMRp) expression status"

* component[pdcGrade].code.text = "Poorly differentiated clusters"
* component[pdcGrade].value[x] only CodeableConcept
* component[pdcGrade].valueCodeableConcept from PdcGradeVS (required)
* component[pdcGrade] ^short = "PDC grade (poorly differentiated clusters)"

* component[intravascularInvasion].code.text = "Intravascular invasion"
* component[intravascularInvasion].value[x] only CodeableConcept
* component[intravascularInvasion].valueCodeableConcept from IntravascularInvasionVS (required)
* component[intravascularInvasion] ^short = "Vascular invasion status"

* component[differentiationGrade].code.text = "Degree of differentiation"
* component[differentiationGrade].value[x] only CodeableConcept
* component[differentiationGrade].valueCodeableConcept from DegreeOfDifferentiationVS (required)
* component[differentiationGrade] ^short = "Histologic grade (G1-G2 low / G3 high)"

* component[sccGrade].code.text = "Squamous cell carcinoma grade"
* component[sccGrade].value[x] only CodeableConcept
* component[sccGrade].valueCodeableConcept from SccGradingVS (required)
* component[sccGrade] ^short = "SCC grading (G1/G2/G3), used only for squamous cell carcinoma"
