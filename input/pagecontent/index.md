# Lithuanian Colorectal Cancer Prevention and Early Diagnosis Implementation Guide

## Introduction and Purpose

This Implementation Guide specifies how to consistently represent and exchange structured clinical data related to the **Lithuanian Colorectal Cancer Prevention Programme** using the **HL7® FHIR® standard**.

The guide supports the national programme for **early detection of colorectal cancer**, with a primary focus on **fecal occult blood testing (FOBT), colonoscopy examinations, and histopathological diagnosis**, together with structured capture of clinically relevant examination findings and diagnostic outcomes.

Its purpose is to enable:

* consistent and high-quality data capture across healthcare providers, laboratories, and endoscopy centers,
* semantic interoperability between **screening, laboratory, endoscopy, pathology, and referral systems**,
* structured reporting for **programme coordination, quality assurance, monitoring, and secondary use**,
* and reliable longitudinal tracking of participants across screening, diagnostic investigation, and treatment pathways.

The guide is developed as part of the national **ADP project**, which aims to support coordinated, data-driven management of preventive and early diagnostic programmes in Lithuania.

## Scope

This guide focuses on the **colorectal cancer prevention and early diagnosis workflow**, covering screening tests, diagnostic colonoscopy procedures, and pathological confirmation of lesions.

It covers the following clinical domains:

* **fecal occult blood testing (FOBT)** as the primary screening method,
* **colonoscopy procedures** performed following positive screening results,
* **documentation of colonoscopic findings**, including polyps, tumors, and other pathological changes,
* **classification and description of detected lesions**, including size, morphology, location, and risk classification,
* **histopathological examination of biopsy and polypectomy samples**, including diagnosis and tumour characterization,
* and **quality indicators of the colonoscopy procedure**, supporting monitoring of programme performance.

The guide models colorectal cancer prevention as a **screening-driven diagnostic pathway**, where positive stool test results lead to colonoscopic investigation, followed by histopathological confirmation when suspicious lesions are detected.

## Key Modelling Principles

The modelling approach is based on the following core principles:

1. **Separation of screening, diagnostic procedures, and pathology results**  
   Screening tests, colonoscopic procedures, and histopathological findings are represented as separate but connected elements of the clinical workflow.

2. **Structured representation of colonoscopy findings**  
   Colonoscopic findings such as polyps, tumors, and other lesions are recorded in a structured manner, including anatomical location, size, morphology, and classification systems used during endoscopic evaluation.

3. **Support for procedural quality indicators**  
   The model allows recording of colonoscopy quality metrics, including bowel preparation quality, completeness of examination, and complications, which are essential for monitoring screening programme effectiveness.

4. **Explicit modelling of lesion characteristics and treatment actions**  
   Detected polyps and lesions are described using structured attributes and may include actions such as biopsy or polypectomy, allowing integration with pathology results and follow-up recommendations.

5. **Integration of histopathological diagnosis**  
   Histological examination results provide definitive classification of lesions, including adenomas, serrated polyps, inflammatory conditions, and malignant tumors, enabling consistent diagnostic interpretation.

6. **Terminology-based interoperability**  
   The guide relies on internationally recognised terminologies and classifiers, especially **SNOMED CT**, and where relevant also **LOINC, ICD-10-AM, and ICD-O**, to ensure semantic consistency across systems and healthcare institutions.

## Content of the Guide

This guide provides:

* **FHIR profiles and extensions** supporting colorectal cancer screening and diagnostic workflows,
* structured modelling of **fecal occult blood tests** used for screening,
* structured representation of **colonoscopy examination data**, including procedural details and findings,
* modelling of **colonoscopic lesions**, including polyps and suspected malignancies,
* structured capture of **biopsy and polypectomy procedures**,
* modelling of **histopathological examination results** for colorectal tissue samples,
* terminology bindings using **SNOMED CT, LOINC, ICD-10-AM, and ICD-O**,
* structured **example instances** illustrating realistic screening and diagnostic scenarios,
* mappings from the national colorectal cancer prevention dataset to interoperable **FHIR artefacts**,
* and identification of gaps and future development needs.

At the current stage, the guide focuses on the **core data structures required for colorectal cancer screening and diagnostic procedures**, including stool testing, colonoscopy reporting, and pathology results. Further refinement, terminology expansion, and clinical validation will be performed in subsequent iterations.

## Why Use This Guide?

By adopting this guide, implementers and healthcare institutions can:

1. **Interoperability:** Ensure consistent and comparable colorectal cancer screening and diagnostic data across healthcare systems.
2. **Data Quality:** Improve the consistency, completeness, and reusability of screening, endoscopy, and pathology data.
3. **Clinical Utility:** Support structured reporting of colonoscopy findings, biopsy results, and diagnostic conclusions.
4. **Programme Monitoring:** Enable population-level analysis of screening participation, detection rates, and procedure quality indicators.
5. **Longitudinal Care:** Support follow-up of patients across screening cycles, colonoscopy procedures, and treatment pathways.

Navigate the sections below to access the profiles, terminology bindings, and detailed examples needed to implement the standard.

### Contributors

| Name | Role | Organization |
|-----|-----|-----|
| [Igor Bossenko](https://about.askigor.eu) | Primary Author | [HELEX](https://helex.health) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Co-Author | [HELEX](https://helex.health) |
| Martynas Bieliauskas | Reviewer | [LMB](https://lmb.lt) |