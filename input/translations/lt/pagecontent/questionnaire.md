### Klausimynai

Šiame puslapyje aprašomos ESPBI (Elektroninių sveikatos paslaugų ir bendradarbiavimo infrastruktūros) klausimyno formos, naudojamos Lietuvos storosios žarnos vėžio skriningo programoje.

#### Kolonoskopijos ESPBI forma

[Colonoscopy ESPBI Questionnaire](Questionnaire-questionnaire-colonoscopy-espbi.html) fiksuoja struktūrizuotus duomenis, renkamus kolonoskopijos procedūros metu vykdant nacionalinę storosios žarnos vėžio skriningo programą. Jis atitinka Lietuvos sveikatos priežiūros teisės aktais nustatytą ESPBI IS formos struktūrą.

##### Formos struktūra

Klausimynas suskirstytas į šias grupes:

| Grupė | Turinys | Susiejama su profiliu |
|-------|---------|----------------|
| Pagrindinė informacija | Procedūros data, anestezija, vaizdo kolonoskopas, pasitraukimo laikas | Procedūra, Vizitas |
| Žarnyno paruošimas | Kokybės vertinimas, BBPS balas pagal segmentą, dietos rekomendacijos, padalinta dozė, rašytinė informacija | [Bowel Preparation Quality examples](Observation-observation-bowel-prep-effective-example.html), [BBPS Left colon sample](Observation-observation-bbps-left-colon-example.html), [BBPS Transverse colon sample](Observation-observation-bbps-transverse-colon-example.html) |
| Kolonoskopo pasiekiamumas | Toliausias pasiektas anatominis taškas | [ObservationColonoscopeReachLtColorectal](StructureDefinition-colonoscope-reach-lt-colorectal.html) |
| Polipų radiniai | Lokalizacija, dydis, Paryžiaus/NICE klasifikacija, SMSA balas, pašalinimo metodas | [Polyp examples](Observation-observation-polyp-found-example.html) |
| Navikų radiniai | Lokalizacija, aprašymas, biopsijos statusas | [Tumor examples](Observation-observation-tumor-found-example.html) |
| Komplikacijos | Buvimas, tipas, sienelės pažeidimas (Sidnėjus), kraujavimo kontrolė | [Complication profiles](StructureDefinition-colonoscopy-complication-presence-lt-colorectal.html), [Wall Injury](StructureDefinition-colonoscopy-wall-injury-detail-lt-colorectal.html) |
| Išvados | Diagnostinės išvados | [Conclusion examples](Observation-observation-conclusion-normal-example.html) |
| Rekomendacijos | Pakartotinės apžiūros intervalas | CarePlan |

##### Naratyvinis susiejimas su FHIR profiliais

Kiekvienas klausimyno elementas susiejamas su struktūrizuotais FHIR ištekliais:

- **Žarnyno paruošimas** → Stebėjimo atvejai, dokumentuojantys BBPS balus pagal segmentą ir bendrą kokybę
- **Kolonoskopo pasiekiamumas** → [ObservationColonoscopeReachLtColorectal](StructureDefinition-colonoscope-reach-lt-colorectal.html) su anatominiu vietu iš [ColonoscopeReachLtColorectalVS](ValueSet-colonoscope-reach.html)
- **Polipų radiniai** → Stebėjimo atvejai su Paryžiaus klasifikacija, NICE klasifikacija, SMSA balo skaičiavimu ir polipektomijos detalėmis
- **Navikų radiniai** → Stebėjimo atvejai su anatomine lokalizacija ir biopsijos statusu
- **Komplikacijos** → [Complication Presence](StructureDefinition-colonoscopy-complication-presence-lt-colorectal.html), [Complication Type](StructureDefinition-colonoscopy-complication-type-lt-colorectal.html) ir [Wall Injury Detail](StructureDefinition-colonoscopy-wall-injury-detail-lt-colorectal.html)

##### Tarpžinybinė integracija

Klausimynas nurodo klinikinį kontekstą iš kitų Lietuvos FHIR diegimo vadovų:

- **Gyvenimo būdo veiksniai**: [Tobacco use](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-tobacco-use-lt-lifestyle.html), [Physical activity](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/StructureDefinition-physical-activity-lt-lifestyle.html) iš [Lifestyle IG](https://build.fhir.org/ig/HL7LT/ig-lt-lifestyle/)
- **Gyvybiniai rodikliai**: [BMI](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/StructureDefinition-bmi.html) iš [VitalSigns IG](https://build.fhir.org/ig/HL7LT/ig-lt-vitalsigns/)

##### Pavyzdžiai

- [Colonoscopy ESPBI Questionnaire](Questionnaire-questionnaire-colonoscopy-espbi.html)
- [Colonoscopy ESPBI QuestionnaireResponse (pavyzdys)](QuestionnaireResponse-questionnaireresponse-colonoscopy-espbi-example.html)
