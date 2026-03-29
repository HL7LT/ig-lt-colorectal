CodeSystem: SnomedExtensionLtColorectalCS
Id: snomed-extension-lt-colorectal
Title: "SNOMED CT Extension for Colorectal Screening"
Description: "Extension CodeSystem for concepts used in the Lithuanian colorectal cancer screening program that are not available in SNOMED CT."
* ^url = $snomed-extension-lt-colorectal-cs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"
* ^caseSensitive = true
* ^content = #complete

// Polyp finding component codes
* #paris-classification "Paris endoscopic classification"
* #paris-classification ^definition = "Paris endoscopic classification of superficial neoplastic lesions"
* #nice-classification "NICE classification"
* #nice-classification ^definition = "NBI International Colorectal Endoscopic classification"
* #polyp-access "Access to polyp"
* #polyp-access ^definition = "Difficulty of access to the polyp during endoscopy"
* #smsa-score "SMSA score"
* #smsa-score ^definition = "Size, Morphology, Site, and Access score for polypectomy difficulty"
* #predicted-histology "Predicted histology"
* #predicted-histology ^definition = "Predicted histological type based on endoscopic appearance"

// Paris classification values
* #paris-Is "Paris 0-Is (sessile/polypoid)"
* #paris-Isp "Paris 0-Isp (semi-pedunculated)"
* #paris-Ip "Paris 0-Ip (pedunculated)"
* #paris-IIa "Paris 0-IIa (slightly elevated)"
* #paris-IIb "Paris 0-IIb (flat)"
* #paris-IIc "Paris 0-IIc (slightly depressed)"
* #lst-g-h "LST-G-H (Laterally spreading, granular type, homogeneous)"
* #lst-g-h ^definition = "Equivalent to Paris 0-IIa"
* #lst-g-nm "LST-G-NM (Laterally spreading, granular type, non-homogeneous)"
* #lst-g-nm ^definition = "Equivalent to Paris 0-IIa + Is"
* #lst-ng-fe "LST-NG-FE (Laterally spreading, non-granular type, flat elevation)"
* #lst-ng-fe ^definition = "Equivalent to Paris 0-IIa"
* #lst-ng-pd "LST-NG-PD (Laterally spreading, non-granular type, depressed)"
* #lst-ng-pd ^definition = "Equivalent to Paris 0-IIa + IIc"

// NICE classification values
* #nice-1 "NICE Type I"
* #nice-1 ^definition = "Hyperplastic/sessile serrated lesion"
* #nice-2 "NICE Type II"
* #nice-2 ^definition = "Adenoma (low/high grade dysplasia)"
* #nice-3 "NICE Type III"
* #nice-3 ^definition = "Deep submucosal invasive cancer"
* #nice-not-evaluated "NICE Not evaluated"

// Polyp access values
* #access-easy "Easy"
* #access-easy ^definition = "Easy access to the polyp. SMSA scale: 1 point."
* #access-heavy "Heavy"
* #access-heavy ^definition = "Difficult access to the polyp. SMSA scale: 3 points."

// Tumor budding grades
* #budding-bd0 "No tumor budding (Bd0)"
* #budding-bd0 ^definition = "0 buds per 20X field"
* #budding-bd1 "Bd1 (1-4 / 20X RL)"
* #budding-bd1 ^definition = "Low tumor budding: 1-4 buds per 20X field"
* #budding-bd2 "Bd2 (5-9 / 20X RL)"
* #budding-bd2 ^definition = "Intermediate tumor budding: 5-9 buds per 20X field"
* #budding-bd3 "Bd3 (10+ / 20X RL)"
* #budding-bd3 ^definition = "High tumor budding: 10 or more buds per 20X field"
* #budding-invaluable "Invaluable"
* #budding-invaluable ^definition = "Tumor budding cannot be assessed"

// PDC grades
* #pdc-none "No poorly differentiated clusters"
* #pdc-g1 "PDC-G1 (1-4 / 20X RL)"
* #pdc-g2 "PDC-G2 (5-9 / 20X RL)"
* #pdc-g3 "PDC-G3 (10+ / 20X RL)"
* #pdc-invaluable "PDC Invaluable"

// MMRP expression
* #mmrp-normal "Normal expression (MMR proficient, MSS)"
* #mmrp-loss "Loss of expression (MMR deficient, MSI)"
* #mmrp-invaluable "MMRP Invaluable"
* #mmrp-postponed "MMRP Postponed"
* #mmrp-undefined "MMRP Undefined (MSS)"

// Invasion depth
* #haggitt-0 "Haggitt 0"
* #haggitt-1 "Haggitt 1"
* #haggitt-2 "Haggitt 2"
* #haggitt-3 "Haggitt 3"
* #haggitt-4 "Haggitt 4"
* #kikuchi-sm1 "Sm1 according to Kikuchi"
* #kikuchi-sm2 "Sm2 according to Kikuchi"
* #kikuchi-sm3 "Sm3 according to Kikuchi"
* #invasion-invaluable "Invasion depth invaluable"
