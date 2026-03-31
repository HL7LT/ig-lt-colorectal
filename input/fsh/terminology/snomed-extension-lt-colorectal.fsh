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

// Molecular test result values
* #mol-postponed "Postponed"
* #mol-postponed ^definition = "Molecular test has been postponed"
* #mol-detected "Detected mutation"
* #mol-detected ^definition = "Mutation has been detected"
* #mol-not-detected "Undefined mutation"
* #mol-not-detected ^definition = "No mutation detected / undefined"
* #mol-set "Set (MSI)"
* #mol-set ^definition = "MSI status has been established"

// Molecular test type codes (KLTN-based)
* #msi-test "MSI (Microsatellite instability study)"
* #msi-test ^definition = "Microsatellite instability study. KLTN code: XLT00915-2"
* #kras-test "KRAS mutation test"
* #kras-test ^definition = "KRAS gene mutation analysis"
* #nras-test "NRAS mutation test"
* #nras-test ^definition = "NRAS gene mutation analysis"
* #braf-v600e-test "BRAF V600E mutation test"
* #braf-v600e-test ^definition = "Study of BRAF gene V600 variants. KLTN code: XLT00914-5"

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

// Bowel preparation method
* #prep-split-two-day "Two-day split preparation"
* #prep-split-two-day ^definition = "Two-day split-dose bowel preparation protocol"
* #prep-same-day "Same-day non-split preparation"
* #prep-same-day ^definition = "Same-day non-split bowel preparation protocol"

// Polypectomy instrument
* #polypectomy-snare "Snare/loop"
* #polypectomy-snare ^definition = "Polypectomy performed using a snare or loop"
* #polypectomy-forceps "Forceps"
* #polypectomy-forceps ^definition = "Polypectomy performed using forceps"

// Polypectomy technique
* #polypectomy-hot "Hot technique"
* #polypectomy-hot ^definition = "Polypectomy using electrocautery (hot)"
* #polypectomy-cold "Cold technique"
* #polypectomy-cold ^definition = "Polypectomy without electrocautery (cold)"

// Resection type
* #resection-en-bloc "En bloc resection"
* #resection-en-bloc ^definition = "Complete removal of lesion in one piece"
* #resection-piecemeal "Piecemeal resection"
* #resection-piecemeal ^definition = "Removal of lesion in multiple fragments"

// Lumen filling
* #lumen-air "Air insufflation"
* #lumen-air ^definition = "Colonic lumen distension using air"
* #lumen-water "Water immersion"
* #lumen-water ^definition = "Colonic lumen distension using water"
* #lumen-co2 "CO2 insufflation"
* #lumen-co2 ^definition = "Colonic lumen distension using carbon dioxide"

// Hydropreparation substances
* #hydro-saline "Normal saline"
* #hydro-saline ^definition = "Submucosal injection of normal saline for lesion lifting"
* #hydro-adrenaline "Adrenaline"
* #hydro-adrenaline ^definition = "Submucosal injection of adrenaline for lesion lifting"
* #hydro-methylene-blue "Methylene blue"
* #hydro-methylene-blue ^definition = "Submucosal injection of methylene blue for lesion lifting"
* #hydro-gelofusine "Gelofusine"
* #hydro-gelofusine ^definition = "Submucosal injection of Gelofusine for lesion lifting"

// Bleeding control methods
* #bleeding-clip "Hemostatic clipping"
* #bleeding-clip ^definition = "Bleeding control using hemostatic clips"
* #bleeding-adrenaline-injection "Adrenaline injection"
* #bleeding-adrenaline-injection ^definition = "Bleeding control using local adrenaline injection"
* #bleeding-coagulation "Thermal coagulation"
* #bleeding-coagulation ^definition = "Bleeding control using thermal coagulation"
* #bleeding-other "Other bleeding control method"
* #bleeding-other ^definition = "Other method of bleeding control not specified above"
