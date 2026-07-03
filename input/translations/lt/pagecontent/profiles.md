### Profiliai

Šiame puslapyje pateikiami visi StructureDefinition profiliai, apibrėžti šiame diegimo vadove.

#### Ataskaita ir kompozicija

- [Colonoscopy Report](StructureDefinition-colonoscopy-report-lt-colorectal.html) -- bendroji kolonoskopijos skriningo ataskaita (tėvinis profilis: ImagingReportLt)
- [Colonoscopy Composition](StructureDefinition-colonoscopy-composition-lt-colorectal.html) -- kolonoskopijos skriningo epizodo kompozicija, sujungianti visus skyrius (tėvinis profilis: ImagingCompositionLt)

#### Procedūros

- [Colonoscopy Procedure](StructureDefinition-colonoscopy-procedure-lt-colorectal.html) -- kolonoskopijos procedūra su anestezijos ir indikacijos detalėmis
- Polypectomy Procedure -- polipo pašalinimo procedūra su metodo detalėmis
- [Colonoscopy Bleeding Control](StructureDefinition-colonoscopy-bleeding-control-lt-colorectal.html) -- kraujavimo kontrolė kolonoskopijos metu

#### Stebėjimai – kolonoskopiniai radiniai

- [Colonoscope Reach](StructureDefinition-colonoscope-reach-lt-colorectal.html) -- iki kur buvo pasiektas kolonoskopas
- [Bowel Preparation Quality](StructureDefinition-bowel-preparation-quality-lt-colorectal.html) -- Bostono žarnyno paruošimo skalės (BBPS) vertinimas
- [Polyp Observation](StructureDefinition-observation-polyp-lt-colorectal.html) -- atskiras polipas su Paryžiaus/NICE klasifikacija, dydžiu, SMSA balo skaičiavimu
- [Tumor Finding](StructureDefinition-tumor-finding-lt-colorectal.html) -- naviko radinys su lokalizacija ir biopsijos statusu
- [Colonoscopy Conclusion](StructureDefinition-colonoscopy-conclusion-lt-colorectal.html) -- išvada/diagnozė po kolonoskopijos

#### Stebėjimai – komplikacijos

- [Complication Presence](StructureDefinition-colonoscopy-complication-presence-lt-colorectal.html) -- ar komplikacija įvyko
- [Complication Type](StructureDefinition-colonoscopy-complication-type-lt-colorectal.html) -- komplikacijos tipas
- [Wall Injury Detail](StructureDefinition-colonoscopy-wall-injury-detail-lt-colorectal.html) -- Sidnėjaus klasifikacija ir atliktas veiksmas

#### Stebėjimai – IOKT ir patologija

- [Fecal Occult Blood Test Result](StructureDefinition-observation-fecal-occult-blood-test-result-lt-colorectal.html) -- išmatų okultinio kraujo tyrimo rezultatas
- [Histological Diagnosis](StructureDefinition-histological-diagnosis-lt-colorectal.html) -- storosios žarnos specifinė histologinė diagnozė su displazijos, pumpuravimo, invazijos ir MMRP komponentais

#### Pakartotinai naudojama iš LT Lab (čia neredefiniuojama)

Šie profiliai iš [LT Lab IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) yra nurodomi, bet neredefiniuojami:

- PathologyReportLtLab -- patologijos diagnostikos ataskaita su ICD-10/ICD-O-3
- PathologyCompositionLtLab -- sinoptinis patologijos dokumentas
- BiopsyProcedureLtLab -- biopsijos procedūra
- SpecimenLtLab / SpecimenBlockLtLab -- mėginio stebėjimas
- SpecimenAdequacyLtLab -- mėginio kokybės vertinimas
- TumorObservableLtLab / TumorMeasurementLtLab -- išsamus naviko apibūdinimas
