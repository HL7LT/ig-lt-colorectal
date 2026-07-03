### Colorectal Cancer Screening Workflow

This page describes the clinical workflow modeled by the Lithuanian Colorectal Cancer Prevention Implementation Guide. The pathway follows the national colorectal cancer early diagnosis programme (ADP).

#### Overview

The colorectal cancer screening pathway consists of three sequential stages, each producing structured FHIR resources:

1. **Fecal Occult Blood Testing (FOBT)** -- primary screening with immunochemical stool testing
2. **Colonoscopic Examination** -- diagnostic colonoscopy with polyp/tumor assessment
3. **Pathological Histological Examination** -- tissue analysis from biopsy or polypectomy specimens

All colonoscopy results are linked into a single [Colonoscopy Composition](StructureDefinition-colonoscopy-composition-lt-colorectal.html) wrapped by a [Colonoscopy Report](StructureDefinition-colonoscopy-report-lt-colorectal.html). Pathology results use profiles from the [Laboratory IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/).

---

#### 1. Fecal Occult Blood Testing (FOBT)

Eligible individuals aged 50--75 are invited to participate in the screening programme. The primary screening method is a fecal immunochemical test (FIT) for occult blood in stool.

**Profile**: [ObservationFecalOccultBloodTestResultLtColorectal](StructureDefinition-observation-fecal-occult-blood-test-result-lt-colorectal.html)

Two test types are supported (from [FOBT Test Codes](ValueSet-fecal-occult-blood-test-codes.html)):
- **Qualitative** (LOINC 80372-6) -- rapid immunoassay, result: detected / not detected (from [FOBT Qualitative Result](ValueSet-fecal-occult-blood-qualitative-result.html))
- **Quantitative** (LOINC 27396-1) -- immunochemical measurement in microg/l

A stool specimen is collected and documented. If FOBT is negative, the patient is re-invited after 2 years. If FOBT is positive (blood detected), the patient is referred for colonoscopy.

**Examples**:
- [FOBT Not Detected](Observation-observation-fobt-qualitative-not-detected-example.html)
- [FOBT Detected](Observation-observation-fobt-qualitative-detected-example.html)
- [FOBT Quantitative](Observation-observation-fobt-quantitative-example.html)
- [Stool Specimen](Specimen-specimen-stool-fobt-example.html)

---

#### 2. Colonoscopic Examination

Patients with positive FOBT are referred for diagnostic colonoscopy. The colonoscopy examination documents the procedure, bowel preparation quality, anatomical reach, findings (polyps, tumors), complications, and conclusions.

##### 2.1 Colonoscopy Procedure

The colonoscopy is recorded as a [Colonoscopy Procedure](StructureDefinition-colonoscopy-procedure-lt-colorectal.html). Key data elements include:
- Whether the procedure was performed with or without anesthesia
- Whether a video colonoscope was used
- Withdrawal time
- Whether the colonoscopy was postponed

**Examples**:
- [Colonoscopy without anesthesia](Procedure-procedure-colonoscopy-no-anesthesia-example.html)
- [Colonoscopy with anesthesia](Procedure-procedure-colonoscopy-with-anesthesia-example.html)

##### 2.2 Colonoscope Reach

The endoscopist documents the most distal anatomical segment reached using the [Colonoscope Reach](StructureDefinition-colonoscope-reach-lt-colorectal.html) profile.

The [Colonoscope Reach ValueSet](ValueSet-colonoscope-reach.html) includes anatomical sites from terminal ileum through to the anal canal. This data is used to calculate the **caecum intubation rate** quality indicator.

**Examples**:
- [Cecum reach](Observation-observation-colonoscope-reach-cecum-example.html)
- [Terminal ileum reach](Observation-observation-colonoscope-reach-ileum-example.html)

##### 2.3 Bowel Preparation Assessment

Bowel preparation quality directly affects mucosal visualization and is assessed using the [Bowel Preparation Quality](StructureDefinition-bowel-preparation-quality-lt-colorectal.html) profile with the Boston Bowel Preparation Scale (BBPS).

The profile captures:
- Overall quality: effective, inadequate, or not done (from [Bowel Preparation Quality VS](ValueSet-bowel-preparation-quality.html))
- BBPS segment scores (0--3 each) for left colon, transverse colon, and right colon (from [BBPS Score Values](ValueSet-bowel-prep-score-values.html))
- Total BBPS score (0--9): quality is poor when < 6 points, or when at least one segment scores 0 or 1

Additional preparation details may be documented:
- Substances used (from [Bowel Preparation Substances](ValueSet-bowel-preparation-substance.html)): Macrogol 4000, Macrogol 3350, sodium picosulfate combination, sodium sulfate
- Whether the patient received written information about preparation
- Whether split-dose preparation was used
- Whether targeted dietary recommendations were given (for poor preparation)

**Examples**:
- [Effective bowel preparation](Observation-observation-bowel-prep-effective-example.html)
- [Inadequate bowel preparation](Observation-observation-bowel-prep-inadequate-example.html)
- [BBPS left colon score](Observation-observation-bbps-left-colon-example.html)

##### 2.4 Polyp Findings

Individual polyps are documented using the [Polyp Finding](StructureDefinition-observation-polyp-lt-colorectal.html) profile with components for:
- **Location** -- anatomical site with SMSA scoring (2 points for proximal, 1 point for distal)
- **Paris classification** -- morphological type (from [Paris Classification VS](ValueSet-paris-classification.html)): Is, ISP, IP, IIa, IIb, IIc, and LST subtypes
- **NICE classification** -- endoscopic histology prediction (from [NICE Classification VS](ValueSet-nice-classification.html)): Type I (hyperplastic), Type II (adenoma), Type III (invasive cancer)
- **Size** -- largest dimension in mm
- **Access to polyp** -- Easy or Heavy (from [Polyp Access VS](ValueSet-polyp-access.html))
- **SMSA score** -- calculated composite score from location + Paris + size + access
- **Predicted histology** -- hyperplastic, SSL, adenoma, or adenoma with suspicion of malignancy (from [Polyp Predicted Histology VS](ValueSet-polyp-predicted-histology.html))

Photo documentation is linked via `derivedFrom` references to Media/DocumentReference resources (minimum 2 photos per polyp: white light and chromoendoscopy).

When a polyp is removed, a Polypectomy Procedure is recorded with details about the removal method (from [Polypectomy Method VS](ValueSet-polypectomy-method.html)): snare loop, pliers, hot/cold method, en bloc or in parts, and hydropreparation technique.

If the polyp is sent for histological examination, the biopsy procedure, sample number, and pathology response are tracked. The **adenoma detection rate** quality indicator is calculated from pathology results.

**Examples**:
- [Polyp found](Observation-observation-polyp-found-example.html)
- Polypectomy

##### 2.5 Tumor Findings

Tumors identified during colonoscopy are documented using the [Tumor Finding](StructureDefinition-tumor-finding-lt-colorectal.html) profile, capturing the anatomical location and free-text description. Tumor biopsy is performed using `BiopsyProcedureLtLab` from the Lab IG, with samples sent for histological examination.

**Examples**:
- [Tumor found](Observation-observation-tumor-found-example.html)
- [Tumor biopsy postponed](Procedure-procedure-tumor-biopsy-postponed-example.html)

##### 2.6 Complications

Complications are documented at two levels:

1. **Complication presence** -- [Colonoscopy Complication Presence](StructureDefinition-colonoscopy-complication-presence-lt-colorectal.html) records whether any complication occurred (Yes/No)

2. **Complication type** -- [Colonoscopy Complication Type](StructureDefinition-colonoscopy-complication-type-lt-colorectal.html) records the specific complication: hemorrhage of colon, complication of anesthesia, accidental organ perforation, or perforation of large intestine

3. **Wall integrity violation** -- [Colonoscopy Wall Injury Detail](StructureDefinition-colonoscopy-wall-injury-detail-lt-colorectal.html) documents wall damage using the Sydney deep mural injury classification (Types I--V from [Sydney Classification VS](ValueSet-sydney-classification.html)) and the action taken (clipping, suturing, or primary operation from [Wall Injury Action VS](ValueSet-colonoscopy-wall-injury-action.html))

4. **Bleeding control** -- [Colonoscopy Bleeding Control](StructureDefinition-colonoscopy-bleeding-control-lt-colorectal.html) documents interventions such as adrenaline injection or clipping

**Examples**:
- [No complication](Observation-observation-colonoscopy-complication-presence-no-example.html)
- [Hemorrhage complication](Observation-observation-colonoscopy-complication-hemorrhage-example.html)
- [Wall injury Type III with clipping](Observation-observation-colonoscopy-wall-injury-clip-type3-example.html)
- [Bleeding control with clip](Procedure-procedure-colonoscopy-bleed-clip-example.html)

##### 2.7 Conclusions

The colonoscopy conclusion is documented using [Colonoscopy Conclusion](StructureDefinition-colonoscopy-conclusion-lt-colorectal.html) with a coded finding from the [Colorectal Conclusion VS](ValueSet-colorectal-conclusion.html), which includes approximately 30 SNOMED-coded findings: normal colonoscopy, polyps, malignant tumor, inflammatory bowel disease (ulcerative colitis, Crohn's disease), ischemic colitis, diverticulosis, hemorrhoids, bleeding of unknown origin, angiectasia, and others.

**Examples**:
- [Normal conclusion](Observation-observation-conclusion-normal-example.html)
- [Polyps and diverticulosis conclusion](Observation-observation-conclusion-polyps-example.html)

---

#### 3. Pathological Histological Examination

Tissue specimens collected during colonoscopy (from biopsy or polypectomy) are sent for histological examination. This stage reuses profiles from the [Laboratory IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) for specimen management, tumor measurement, and pathology reporting, with colorectal-specific extensions.

##### 3.1 Specimen and Pre-Analytic Data

Specimens are documented using [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) with container number, type of material (polypectomy/biopsy), and localization from the endoscopy. Tissue blocks are tracked using [SpecimenBlockLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-block-lt-lab.html). Specimen quality is assessed using [SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html): sufficient for research, limited informativeness, or insufficient.

##### 3.2 Macroscopic Examination

The largest dimension of the tissue fragment is recorded using [SpecimenMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-measurement-lt-lab.html). Additional macroscopic findings are captured as free text.

##### 3.3 Histological Diagnosis

The colorectal-specific [Histological Diagnosis](StructureDefinition-histological-diagnosis-lt-colorectal.html) profile captures the structured diagnosis with components for:

**Non-invasive processes** (from [Histological Diagnosis VS](ValueSet-colorectal-histological-diagnosis.html)):
- Conventional adenoma: tubular, tubulovillous, villous
- Serrated polyps: hyperplastic polyp (HP), sessile serrated lesion (SSL), SSL with dysplasia, traditional serrated adenoma (TSA)
- Other polyps, benign non-epithelial tumors (lipoma, leiomyoma), ulcer, colitis

**Malignant tumors**:
- Primary carcinoma: adenocarcinoma (NOS, mucinous, signet ring, medullary, serrated, micropapillary, adenosquamous, undifferentiated, pseudosarcomatous)
- Other: neuroendocrine carcinoma (NEC), neuroendocrine tumor (NET), GIST, melanoma, lymphoma, sarcoma, metastases

**Additional assessment components**:
- **Dysplasia grade** (from [Dysplasia Grade VS](ValueSet-dysplasia-grade.html)): no dysplasia, low grade, high grade / pTis
- **Radicalism of removal** (from [Radicalism of Removal VS](ValueSet-radicalism-of-removal.html)): R0 (clear margins), R1 (involved margins), RX (cannot be assessed), not applicable
- **Tumor budding** (from [Tumor Budding VS](ValueSet-tumor-budding.html)): Bd0, Bd1 (1--4/20X), Bd2 (5--9/20X), Bd3 (10+/20X)
- **Invasion depth** (from [Invasion Depth VS](ValueSet-invasion-depth.html)): Haggitt 0--4, Kikuchi Sm1--Sm3
- **MMRP expression** (from [MMRP Expression VS](ValueSet-mmrp-expression.html)): normal (MSS), loss of expression (MSI), invaluable, postponed
- **Intravascular invasion**: assessed using LymphovascularInvasionVS from Lab IG

##### 3.4 Molecular Research

Molecular testing for microsatellite instability (MSI), KRAS, NRAS, and BRAF V600E mutations is indicated for adenocarcinoma. Each test is recorded as a separate [Molecular Test Result](StructureDefinition-molecular-test-result-lt-colorectal.html) observation.

Test types (from [Molecular Test Type VS](ValueSet-molecular-test-type.html)):
- **MSI** (KLTN XLT00915-2) -- microsatellite instability study
- **KRAS** -- KRAS gene mutation analysis
- **NRAS** -- NRAS gene mutation analysis
- **BRAF V600E** (KLTN XLT00914-5) -- BRAF gene V600 variant study

Results (from [Molecular Test Result VS](ValueSet-molecular-test-result.html)): Postponed, Detected mutation, Undefined mutation, or Set (MSI).

**Examples**:
- [MSI - Set](Observation-observation-msi-detected-example.html)
- [KRAS - Detected mutation](Observation-observation-kras-detected-example.html)
- [NRAS - Undefined mutation](Observation-observation-nras-not-detected-example.html)
- [BRAF V600E - Postponed](Observation-observation-braf-postponed-example.html)

##### 3.5 Pathology Report

The synoptic pathology report follows the [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html) structure from the Laboratory IG, organized into four LOINC-coded sections:

1. **Pre-Analytic** (LOINC 22636-5): clinical context, service request, procedure, and submitted specimens
2. **Macroscopic** (LOINC 74574-5): gross specimen measurements, specimen adequacy, paraffin blocks
3. **Microscopic** (LOINC 660-1): histological diagnosis, grading, invasion assessment
4. **Synthesis** (LOINC 22637-3): final diagnosis with ICD-10 and ICD-O-3 coding

The final [Pathology Report](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-report-lt-lab.html) includes mandatory ICD-10 coding and optional ICD-O-3 morphology coding in `conclusionCode`.

---

#### 4. Screening Episode Composition

All colonoscopy results are linked into a single structured document -- the [Colonoscopy Composition](StructureDefinition-colonoscopy-composition-lt-colorectal.html).

The composition sections include:
- **Procedure** -- colonoscopy procedure, polypectomy procedures, bleeding control procedures
- **Findings** -- colonoscope reach, bowel preparation quality, polyp findings, tumor findings, complication presence and type, wall injury details
- **Conclusions** -- colonoscopy conclusion observations
- **Histopathology** -- references to Pathology Reports from the Lab IG
- **Lifestyle Factors** -- cross-IG references to [Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) (tobacco use, alcohol consumption, nutrition)
- **Vital Signs** -- cross-IG references to [VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) (BMI)

The composition is wrapped by the [Colonoscopy Report](StructureDefinition-colonoscopy-report-lt-colorectal.html) which aggregates all structured results.

---

#### Quality Indicators

The screening programme defines the following quality indicators, computable from the structured data:

| Indicator | Denominator | Numerator |
|-----------|------------|-----------|
| Caecum intubation rate | All screening colonoscopies | Procedures where colonoscope reached cecum or terminal ileum |
| Quality of bowel preparation | Patients who underwent screening | Patients with BBPS total score >= 6 |
| Adenoma Detection Rate | Total screening colonoscopies | Procedures where at least one adenoma was found (from pathology) |
| Proper Polypectomy Technique | Polyps > 3mm removed during endoscopy | Polyps removed with a snare loop |
| Early complications rate | Screening colonoscopies | Bleeding and wall integrity damage during colonoscopy |
| 7-day hospitalization rate | Screening colonoscopies | Hospitalizations within 7 days after colonoscopy |
| Mortality rate | Screening colonoscopies | Deaths within 30 days after colonoscopy |
| Interval cancer rate | Screening colonoscopies | Colorectal cancer occurrence within 10 years |
