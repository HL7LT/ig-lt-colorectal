### Storosios žarnos vėžio skriningo darbo eiga

Šiame puslapyje aprašoma klinikinė darbo eiga, kurią modeliuoja Lietuvos storosios žarnos vėžio prevencijos diegimo vadovas. Kelias atitinka nacionalinę storosios žarnos vėžio ankstyvo diagnostikos programą (ADP).

#### Apžvalga

Storosios žarnos vėžio skriningo kelias susideda iš trijų nuoseklių etapų, kurių kiekvienas sukuria struktūrizuotus FHIR išteklius:

1. **Išmatų okultinio kraujo tyrimas (IOKT)** -- pirminis skriningas naudojant imunofermentinį išmatų tyrimą
2. **Kolonoskopinis tyrimas** -- diagnostinė kolonoskopija su polipų/navikų vertinimu
3. **Patologinis histologinis tyrimas** -- audinių analizė iš biopsijos ar polipektomijos mėginių

Visi kolonoskopijos rezultatai sujungiami į vieną [Colonoscopy Composition](StructureDefinition-colonoscopy-composition-lt-colorectal.html), kurią apgaubia [Colonoscopy Report](StructureDefinition-colonoscopy-report-lt-colorectal.html). Patologijos rezultatai naudoja profilius iš [Laboratory IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/).

---

#### 1. Išmatų okultinio kraujo tyrimas (IOKT)

50–75 metų amžiaus tinkamiausi asmenys kviečiami dalyvauti skriningo programoje. Pagrindinis skriningo metodas yra fekalinis imunofermentinis tyrimas (FIT) okultiniam kraujui išmatose nustatyti.

**Profilis**: [ObservationFecalOccultBloodTestResultLtColorectal](StructureDefinition-observation-fecal-occult-blood-test-result-lt-colorectal.html)

Palaikomi du tyrimo tipai (iš [FOBT Test Codes](ValueSet-fecal-occult-blood-test-codes.html)):
- **Kokybinis** (LOINC 80372-6) -- greitas imunofermentinis tyrimas, rezultatas: aptikta / neaptikta (iš [FOBT Qualitative Result](ValueSet-fecal-occult-blood-qualitative-result.html))
- **Kiekybinis** (LOINC 27396-1) -- imunofermentinis matavimas mikrog/l

Surenkamas ir dokumentuojamas išmatų mėginys. Jei IOKT neigiamas, pacientas pakartotinai kviečiamas po 2 metų. Jei IOKT teigiamas (aptiktas kraujas), pacientas nukreipiamas kolonoskopijai.

**Pavyzdžiai**:
- [FOBT Not Detected](Observation-observation-fobt-qualitative-not-detected-example.html)
- [FOBT Detected](Observation-observation-fobt-qualitative-detected-example.html)
- [FOBT Quantitative](Observation-observation-fobt-quantitative-example.html)
- [Stool Specimen](Specimen-specimen-stool-fobt-example.html)

---

#### 2. Kolonoskopinis tyrimas

Pacientai su teigiamu IOKT nukreipiami diagnostinei kolonoskopijai. Kolonoskopijos tyrimas dokumentuoja procedūrą, žarnyno paruošimo kokybę, anatominį pasiekiamumą, radinius (polipus, navikus), komplikacijas ir išvadas.

##### 2.1 Kolonoskopijos procedūra

Kolonoskopija registruojama kaip [Colonoscopy Procedure](StructureDefinition-colonoscopy-procedure-lt-colorectal.html). Pagrindiniai duomenų elementai apima:
- Ar procedūra atlikta su anestezija, ar be jos
- Ar naudotas vaizdo kolonoskopas
- Pasitraukimo laikas
- Ar kolonoskopija buvo atidėta

**Pavyzdžiai**:
- [Colonoscopy without anesthesia](Procedure-procedure-colonoscopy-no-anesthesia-example.html)
- [Colonoscopy with anesthesia](Procedure-procedure-colonoscopy-with-anesthesia-example.html)

##### 2.2 Kolonoskopo pasiekiamumas

Endoskopistas dokumentuoja toliausią pasiektą anatominį segmentą naudodamas [Colonoscope Reach](StructureDefinition-colonoscope-reach-lt-colorectal.html) profilį.

[Colonoscope Reach ValueSet](ValueSet-colonoscope-reach.html) apima anatominius vietovius nuo galutinės klubinės žarnos iki analinio kanalo. Šie duomenys naudojami **aklosios žarnos intubacijos rodiklio** kokybės rodikliui apskaičiuoti.

**Pavyzdžiai**:
- [Cecum reach](Observation-observation-colonoscope-reach-cecum-example.html)
- [Terminal ileum reach](Observation-observation-colonoscope-reach-ileum-example.html)

##### 2.3 Žarnyno paruošimo vertinimas

Žarnyno paruošimo kokybė tiesiogiai veikia gleivinės vizualizavimą ir vertinama naudojant [Bowel Preparation Quality](StructureDefinition-bowel-preparation-quality-lt-colorectal.html) profilį su Bostono žarnyno paruošimo skale (BBPS).

Profilis fiksuoja:
- Bendrą kokybę: veiksminga, neveiksminga arba neatlikta (iš [Bowel Preparation Quality VS](ValueSet-bowel-preparation-quality.html))
- BBPS segmentų balus (0–3 kiekvienam) kairiajai gaubtinei žarnai, skersinei gaubtinei žarnai ir dešiniajai gaubtinei žarnai (iš [BBPS Score Values](ValueSet-bowel-prep-score-values.html))
- Bendrą BBPS balą (0–9): kokybė prasta, kai < 6 taškai arba bent vienas segmentas įvertintas 0 ar 1

Papildomos paruošimo detalės gali būti dokumentuojamos:
- Naudojamos medžiagos (iš [Bowel Preparation Substances](ValueSet-bowel-preparation-substance.html)): Makrogolis 4000, Makrogolis 3350, natrio pikosulfato derinys, natrio sulfatas
- Ar pacientas gavo rašytinę informaciją apie paruošimą
- Ar naudota padalintos dozės schema
- Ar teiktos tikslinos dietos rekomendacijos (dėl prasto paruošimo)

**Pavyzdžiai**:
- [Effective bowel preparation](Observation-observation-bowel-prep-effective-example.html)
- [Inadequate bowel preparation](Observation-observation-bowel-prep-inadequate-example.html)
- [BBPS left colon score](Observation-observation-bbps-left-colon-example.html)

##### 2.4 Polipų radiniai

Atskiri polipai dokumentuojami naudojant [Polyp Finding](StructureDefinition-observation-polyp-lt-colorectal.html) profilį su komponentais:
- **Lokalizacija** -- anatominis vietas su SMSA balu (2 taškai proksimaliai, 1 taškas distaliai)
- **Paryžiaus klasifikacija** -- morfologinis tipas (iš [Paris Classification VS](ValueSet-paris-classification.html)): Is, ISP, IP, IIa, IIb, IIc ir LST potipiai
- **NICE klasifikacija** -- endoskopinė histologijos prognozė (iš [NICE Classification VS](ValueSet-nice-classification.html)): I tipas (hiperplastinis), II tipas (adenoma), III tipas (invazinė vėžys)
- **Dydis** -- didžiausias matmuo mm
- **Prieinamumas prie polipo** -- lengvas arba sunkus (iš [Polyp Access VS](ValueSet-polyp-access.html))
- **SMSA balas** -- sudėtinis balas, apskaičiuotas iš lokalizacijos + Paryžiaus + dydžio + prieinamumo
- **Prognozuojama histologija** -- hiperplastinė, SSL, adenoma arba adenoma su piktybiškumo įtarimu (iš [Polyp Predicted Histology VS](ValueSet-polyp-predicted-histology.html))

Fotofiksacija susieta per `derivedFrom` nuorodas į Media/DocumentReference išteklius (mažiausiai 2 nuotraukos vienam polipui: balta šviesa ir chromoendoskopija).

Pašalinus polipą, registruojama [Polypectomy Procedure](StructureDefinition-procedure-polypectomy-lt-colorectal.html) su detalėmis apie pašalinimo metodą (iš [Polypectomy Method VS](ValueSet-polypectomy-method.html)): kilpos žąslai, replės, karštas/šaltas metodas, en bloc arba dalimis, bei hidroparuošimo technika.

Jei polipas siunčiamas histologiniam tyrimui, stebima biopsijos procedūra, mėginio numeris ir patologijos atsakymas. **Adenomos aptikimo rodiklio** kokybės rodiklis apskaičiuojamas iš patologijos rezultatų.

**Pavyzdžiai**:
- [Polyp found](Observation-observation-polyp-found-example.html)
- [Polypectomy](Procedure-procedure-polypectomy-example.html)

##### 2.5 Navikų radiniai

Navikai, aptikti kolonoskopijos metu, dokumentuojami naudojant [Tumor Finding](StructureDefinition-tumor-finding-lt-colorectal.html) profilį, fiksuojant anatominę lokalizaciją ir laisvojo teksto aprašymą. Naviko biopsija atliekama naudojant `BiopsyProcedureLtLab` iš Lab IG, o mėginiai siunčiami histologiniam tyrimui.

**Pavyzdžiai**:
- [Tumor found](Observation-observation-tumor-found-example.html)
- [Tumor biopsy postponed](Procedure-procedure-tumor-biopsy-postponed-example.html)

##### 2.6 Komplikacijos

Komplikacijos dokumentuojamos dviem lygmenimis:

1. **Komplikacijos buvimas** -- [Colonoscopy Complication Presence](StructureDefinition-colonoscopy-complication-presence-lt-colorectal.html) fiksuoja, ar kilo kokia nors komplikacija (Taip/Ne)

2. **Komplikacijos tipas** -- [Colonoscopy Complication Type](StructureDefinition-colonoscopy-complication-type-lt-colorectal.html) fiksuoja konkrečią komplikaciją: gaubtinės žarnos kraujavimas, anestezijos komplikacija, netyčinis organo perforavimas arba storosios žarnos perforacija

3. **Sienelės vientisumo pažeidimas** -- [Colonoscopy Wall Injury Detail](StructureDefinition-colonoscopy-wall-injury-detail-lt-colorectal.html) dokumentuoja sienelės pažeidimą naudojant Sidnėjaus gilaus sienelės pažeidimo klasifikaciją (I–V tipai iš [Sydney Classification VS](ValueSet-sydney-classification.html)) ir atliktą veiksmą (įspaustukų uždėjimas, susiuvimas arba pirminė operacija iš [Wall Injury Action VS](ValueSet-colonoscopy-wall-injury-action.html))

4. **Kraujavimo kontrolė** -- [Colonoscopy Bleeding Control](StructureDefinition-colonoscopy-bleeding-control-lt-colorectal.html) dokumentuoja intervencijas, tokias kaip adrenalino injekcija arba įspaustukų uždėjimas

**Pavyzdžiai**:
- [No complication](Observation-observation-colonoscopy-complication-presence-no-example.html)
- [Hemorrhage complication](Observation-observation-colonoscopy-complication-hemorrhage-example.html)
- [Wall injury Type III with clipping](Observation-observation-colonoscopy-wall-injury-clip-type3-example.html)
- [Bleeding control with clip](Procedure-procedure-colonoscopy-bleed-clip-example.html)

##### 2.7 Išvados

Kolonoskopijos išvada dokumentuojama naudojant [Colonoscopy Conclusion](StructureDefinition-colonoscopy-conclusion-lt-colorectal.html) su koduotu radiniu iš [Colorectal Conclusion VS](ValueSet-colorectal-conclusion.html), kuris apima apie 30 SNOMED koduotų radinių: normali kolonoskopija, polipai, piktybinis navikas, uždegiminė žarnyno liga (opinė kolitas, Krono liga), išeminė kolitas, divertikuliozė, hemorojus, nežinomos kilmės kraujavimas, angiektazija ir kt.

**Pavyzdžiai**:
- [Normal conclusion](Observation-observation-conclusion-normal-example.html)
- [Polyps and diverticulosis conclusion](Observation-observation-conclusion-polyps-example.html)

---

#### 3. Patologinis histologinis tyrimas

Audinių mėginiai, surinkti kolonoskopijos metu (iš biopsijos ar polipektomijos), siunčiami histologiniam tyrimui. Šiame etape pakartotinai naudojami profiliai iš [Laboratory IG](https://build.fhir.org/ig/HL7LT/ig-lt-lab/) mėginių valdymui, naviko matavimui ir patologijos ataskaitų teikimui, su storosios žarnos specifiniais plėtiniais.

##### 3.1 Mėginys ir ikianaliziniai duomenys

Mėginiai dokumentuojami naudojant [SpecimenLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-lt-lab.html) su indo numeriu, medžiagos tipu (polipektomija/biopsija) ir lokalizacija iš endoskopijos. Audinių blokai stebimi naudojant [SpecimenBlockLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-block-lt-lab.html). Mėginio kokybė vertinama naudojant [SpecimenAdequacyLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-adequacy-lt-lab.html): pakankamas tyrimui, riboto informatyvumo arba nepakankamas.

##### 3.2 Makroskopinis tyrimas

Didžiausias audinių fragmento matmuo registruojamas naudojant [SpecimenMeasurementLtLab](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-specimen-measurement-lt-lab.html). Papildomos makroskopinės išvados fiksuojamos kaip laisvasis tekstas.

##### 3.3 Histologinė diagnozė

Storosios žarnos specifinis [Histological Diagnosis](StructureDefinition-histological-diagnosis-lt-colorectal.html) profilis fiksuoja struktūrizuotą diagnozę su komponentais:

**Neinvaziniai procesai** (iš [Histological Diagnosis VS](ValueSet-colorectal-histological-diagnosis.html)):
- Konvencinė adenoma: kanalėlinė, kanalėlinė-gaurelių, gaurelių
- Dantytuosius polipai: hiperplastinis polipas (HP), sėslioji dantytuoji lezija (SSL), SSL su displazija, tradicinė dantytuoji adenoma (TSA)
- Kiti polipai, gerybiniai neepiteliniai navikai (lipoma, leiomioma), opa, kolitas

**Piktybiniai navikai**:
- Pirminis karcinoma: adenokarcinoma (NOS, gleivinis, žiedinių ląstelių, medulinis, dantytuosius, mikropapiliarinis, adenoskvamozinis, nediferencijuotas, pseudosarkominis)
- Kiti: neuroendokrininė karcinoma (NEC), neuroendokrininė naviko (NET), GIST, melanoma, limfoma, sarkoma, metastazės

**Papildomi vertinimo komponentai**:
- **Displazijos laipsnis** (iš [Dysplasia Grade VS](ValueSet-dysplasia-grade.html)): be displazijos, mažo laipsnio, didelio laipsnio / pTis
- **Pašalinimo radikalizmas** (iš [Radicalism of Removal VS](ValueSet-radicalism-of-removal.html)): R0 (švarios kraštinės), R1 (paveiktos kraštinės), RX (negalima įvertinti), netaikoma
- **Naviko pumpuravimas** (iš [Tumor Budding VS](ValueSet-tumor-budding.html)): Bd0, Bd1 (1–4/20X), Bd2 (5–9/20X), Bd3 (10+/20X)
- **Invazijos gylis** (iš [Invasion Depth VS](ValueSet-invasion-depth.html)): Haggitt 0–4, Kikuchi Sm1–Sm3
- **MMRP ekspresija** (iš [MMRP Expression VS](ValueSet-mmrp-expression.html)): normali (MSS), ekspresijos praradimas (MSI), neįvertinama, atidėta
- **Kraujagyslių invazija**: vertinama naudojant LymphovascularInvasionVS iš Lab IG

##### 3.4 Molekulinis tyrimas

Mikrosatelitų nestabilumo (MSI), KRAS, NRAS ir BRAF V600E mutacijų molekulinis tyrimas indikuojamas adenokarcinomai. Kiekvienas tyrimas registruojamas kaip atskiras [Molecular Test Result](StructureDefinition-molecular-test-result-lt-colorectal.html) stebėjimas.

Tyrimų tipai (iš [Molecular Test Type VS](ValueSet-molecular-test-type.html)):
- **MSI** (KLTN XLT00915-2) -- mikrosatelitų nestabilumo tyrimas
- **KRAS** -- KRAS geno mutacijos analizė
- **NRAS** -- NRAS geno mutacijos analizė
- **BRAF V600E** (KLTN XLT00914-5) -- BRAF geno V600 varianto tyrimas

Rezultatai (iš [Molecular Test Result VS](ValueSet-molecular-test-result.html)): Atidėta, Mutacija aptikta, Neapibrėžta mutacija arba Nustatyta (MSI).

**Pavyzdžiai**:
- [MSI - Set](Observation-observation-msi-detected-example.html)
- [KRAS - Detected mutation](Observation-observation-kras-detected-example.html)
- [NRAS - Undefined mutation](Observation-observation-nras-not-detected-example.html)
- [BRAF V600E - Postponed](Observation-observation-braf-postponed-example.html)

##### 3.5 Patologijos ataskaita

Sinoptinė patologijos ataskaita atitinka [Pathology Composition](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-composition-lt-lab.html) struktūrą iš Laboratory IG, suskirstytą į keturis LOINC koduotus skyrius:

1. **Ikianalizinis** (LOINC 22636-5): klinikinis kontekstas, paslaugų užklausa, procedūra ir pateikti mėginiai
2. **Makroskopinis** (LOINC 74574-5): bendri mėginio matavimai, mėginio tinkamumas, parafino blokai
3. **Mikroskopinis** (LOINC 660-1): histologinė diagnozė, laipsniavimas, invazijos vertinimas
4. **Sintezė** (LOINC 22637-3): galutinė diagnozė su ICD-10 ir ICD-O-3 kodavimu

Galutinė [Pathology Report](https://build.fhir.org/ig/HL7LT/ig-lt-lab/StructureDefinition-pathology-report-lt-lab.html) apima privalomą ICD-10 kodavimą ir neprivalomą ICD-O-3 morfologijos kodavimą `conclusionCode`.

---

#### 4. Skriningo epizodo kompozicija

Visi kolonoskopijos rezultatai sujungiami į vieną struktūrizuotą dokumentą -- [Colonoscopy Composition](StructureDefinition-colonoscopy-composition-lt-colorectal.html).

Kompozicijos skyriai apima:
- **Procedūra** -- kolonoskopijos procedūra, polipektomijos procedūros, kraujavimo kontrolės procedūros
- **Radiniai** -- kolonoskopo pasiekiamumas, žarnyno paruošimo kokybė, polipų radiniai, navikų radiniai, komplikacijos buvimas ir tipas, sienelės pažeidimo detalės
- **Išvados** -- kolonoskopijos išvadų stebėjimai
- **Histopatologija** -- nuorodos į patologijos ataskaitas iš Lab IG
- **Gyvenimo būdo veiksniai** -- tarpžinybinės nuorodos į [Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/) (tabako vartojimas, alkoholio vartojimas, mityba)
- **Gyvybiniai rodikliai** -- tarpžinybinės nuorodos į [VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/) (KMI)

Kompoziciją apgaubia [Colonoscopy Report](StructureDefinition-colonoscopy-report-lt-colorectal.html), kuris agreguoja visus struktūrizuotus rezultatus.

---

#### Kokybės rodikliai

Skriningo programa apibrėžia šiuos kokybės rodiklius, apskaičiuojamus iš struktūrizuotų duomenų:

| Rodiklis | Vardiklis | Skaitiklis |
|-----------|------------|-----------|
| Aklosios žarnos intubacijos rodiklis | Visos skriningo kolonoskopijos | Procedūros, kuriose kolonoskopas pasiekė akląją žarną arba galutinę klubinę žarną |
| Žarnyno paruošimo kokybė | Pacientai, kuriems atliktas skriningas | Pacientai, kurių BBPS bendras balas >= 6 |
| Adenomos aptikimo rodiklis | Visos skriningo kolonoskopijos | Procedūros, kuriose rasta bent viena adenoma (iš patologijos) |
| Tinkamas polipektomijos metodas | Polipai > 3 mm, pašalinti endoskopijos metu | Polipai, pašalinti kilpos žąslais |
| Ankstyvų komplikacijų rodiklis | Skriningo kolonoskopijos | Kraujavimas ir sienelės vientisumo pažeidimai kolonoskopijos metu |
| 7 dienų hospitalizacijos rodiklis | Skriningo kolonoskopijos | Hospitalizacijos per 7 dienas po kolonoskopijos |
| Mirštamumo rodiklis | Skriningo kolonoskopijos | Mirtys per 30 dienų po kolonoskopijos |
| Intervalo vėžio rodiklis | Skriningo kolonoskopijos | Storosios žarnos vėžio atsiradimas per 10 metų |
