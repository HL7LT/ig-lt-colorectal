# Lietuvos storosios žarnos vėžio prevencijos ir ankstyvo diagnostikos diegimo vadovas

## Įvadas ir tikslas

Šis diegimo vadovas nustato, kaip nuosekliai pavaizduoti ir keistis struktūrizuotais klinikiniais duomenimis, susijusiais su **Lietuvos storosios žarnos vėžio prevencijos programa**, naudojant **HL7® FHIR® standartą**.

Vadovas palaiko nacionalinę programą, skirtą **ankstyvam storosios žarnos vėžio aptikimui**, pirmiausia orientuotą į **išmatų okultinio kraujo tyrimą (IOKT), kolonoskopijos tyrimus ir histopatologinę diagnostiką**, kartu su struktūrizuotu kliniškai reikšmingų tyrimo rezultatų ir diagnostikos išvadų užfiksavimu.

Jo tikslas – užtikrinti:

* nuoseklų ir aukštos kokybės duomenų rinkimą sveikatos priežiūros įstaigose, laboratorijose ir endoskopijos centruose,
* semantinį sąveikumą tarp **skriningo, laboratorijos, endoskopijos, patologijos ir siuntimo sistemų**,
* struktūrizuotą ataskaitų teikimą **programos koordinavimui, kokybės užtikrinimui, stebėsenai ir antriniam naudojimui**,
* ir patikimą ilgalaikį dalyvių stebėjimą skrininingo, diagnostikos tyrimo ir gydymo etapuose.

Vadovas parengtas vykdant nacionalinį **ADP projektą**, kuriuo siekiama palaikyti koordinuotą, duomenimis pagrįstą prevencinių ir ankstyvo diagnostikos programų valdymą Lietuvoje.

## Apimtis

Šis vadovas orientuotas į **storosios žarnos vėžio prevencijos ir ankstyvo diagnostikos darbo eigą**, apimančią skriningo tyrimus, diagnostinę kolonoskopiją ir patologinį lezijų patvirtinimą.

Jis apima šias klinikos sritis:

* **išmatų okultinio kraujo tyrimą (IOKT)** kaip pagrindinį skriningo metodą,
* **kolonoskopijos procedūras**, atliekamas po teigiamų skriningo rezultatų,
* **kolonoskopinių radinių dokumentavimą**, įskaitant polipus, navikus ir kitus patologinius pakitimus,
* **aptiktų lezijų klasifikavimą ir aprašymą**, įskaitant dydį, morfologiją, lokalizaciją ir rizikos klasifikavimą,
* **biopsijos ir polipektomijos mėginių histopatologinį tyrimą**, įskaitant diagnozę ir naviko apibūdinimą,
* ir **kolonoskopijos procedūros kokybės rodiklius**, palaikančius programos veiklos stebėseną.

Vadovas modeliuoja storosios žarnos vėžio prevenciją kaip **skriningo pagrįstą diagnostikos kelią**, kai teigiami išmatų tyrimo rezultatai lemia kolonoskopiją, po kurios, aptikus įtartinas lezijas, atliekamas histopatologinis patvirtinimas.

## Pagrindiniai modeliavimo principai

Modeliavimo metodas grindžiamas šiais pagrindiniais principais:

1. **Skriningo, diagnostinių procedūrų ir patologijos rezultatų atskyrimas**  
   Skriningo tyrimai, kolonoskopinės procedūros ir histopatologiniai radiniai pavaizduojami kaip atskiri, tačiau tarpusavyje susiję klinikinės darbo eigos elementai.

2. **Struktūrizuotas kolonoskopinių radinių vaizdavimas**  
   Kolonoskopiniai radiniai, tokie kaip polipai, navikai ir kitos lezijos, registruojami struktūrizuotai, įskaitant anatominę lokalizaciją, dydį, morfologiją ir klasifikavimo sistemas, naudojamas endoskopinio vertinimo metu.

3. **Palaikymas procedūrų kokybės rodikliams**  
   Modelis leidžia registruoti kolonoskopijos kokybės metrikas, įskaitant žarnyno paruošimo kokybę, tyrimo išsamumą ir komplikacijas, kurios yra būtinos stebint skriningo programos efektyvumą.

4. **Aiškus lezijų savybių ir gydymo veiksmų modeliavimas**  
   Aptikti polipai ir lezijos aprašomi naudojant struktūrizuotus atributus ir gali apimti tokius veiksmus kaip biopsija ar polipektomija, leidžiant integruoti su patologijos rezultatais ir pakartotinės apžiūros rekomendacijomis.

5. **Histopatologinės diagnostikos integravimas**  
   Histologinio tyrimo rezultatai suteikia galutinę lezijų klasifikaciją, įskaitant adenomas, dantytuosius polipus, uždegimines būkles ir piktybinius navikus, užtikrinant nuoseklią diagnostikos interpretaciją.

6. **Terminologijos pagrindu grįstas sąveikumas**  
   Vadovas remiasi tarptautiniu mastu pripažintomis terminologijomis ir klasifikatoriais, ypač **SNOMED CT**, o ten kur aktualu – taip pat **LOINC, ICD-10-AM ir ICD-O**, siekiant užtikrinti semantinį nuoseklumą sistemose ir sveikatos priežiūros įstaigose.

## Vadovo turinys

Šis vadovas teikia:

* **FHIR profilius ir plėtinius**, palaikančius storosios žarnos vėžio skriningo ir diagnostikos darbo eigas,
* struktūrizuotą **išmatų okultinio kraujo tyrimų**, naudojamų skriningui, modeliavimą,
* struktūrizuotą **kolonoskopijos tyrimo duomenų** vaizdavimą, įskaitant procedūros detales ir radinius,
* **kolonoskopinių lezijų**, įskaitant polipus ir įtariamas piktybes, modeliavimą,
* struktūrizuotą **biopsijos ir polipektomijos procedūrų** fiksavimą,
* **histopatologinio tyrimo rezultatų** storosios žarnos audinių mėginiams modeliavimą,
* terminologijos susiejimus naudojant **SNOMED CT, LOINC, ICD-10-AM ir ICD-O**,
* struktūrizuotus **pavyzdinius atvejus**, iliustruojančius realistiškus skriningo ir diagnostikos scenarijus,
* susiejimus iš nacionalinio storosios žarnos vėžio prevencijos duomenų rinkinio su sąveikiomis **FHIR artefaktais**,
* ir spragų bei būsimų plėtros poreikių identifikavimą.

Dabartiniu etapu vadovas orientuotas į **pagrindines duomenų struktūras, reikalingas storosios žarnos vėžio skriningui ir diagnostinėms procedūroms**, įskaitant išmatų tyrimą, kolonoskopijos ataskaitų teikimą ir patologijos rezultatus. Tolesnis tikslinimas, terminologijos išplėtimas ir klinikinis patvirtinimas bus atliekamas vėlesnėse iteracijose.

## Kodėl verta naudoti šį vadovą?

Pritaikę šį vadovą, diegėjai ir sveikatos priežiūros įstaigos gali:

1. **Sąveikumas:** Užtikrinti nuoseklius ir palyginamus storosios žarnos vėžio skriningo ir diagnostikos duomenis visose sveikatos priežiūros sistemose.
2. **Duomenų kokybė:** Pagerinti skriningo, endoskopijos ir patologijos duomenų nuoseklumą, išsamumą ir pakartotinį naudojimą.
3. **Klinikinis naudingumas:** Palaikyti struktūrizuotą kolonoskopijos radinių, biopsijos rezultatų ir diagnostinių išvadų ataskaitų teikimą.
4. **Programos stebėsena:** Įgalinti populiacijos lygio skriningo dalyvavimo, aptikimo rodiklių ir procedūrų kokybės rodiklių analizę.
5. **Ilgalaikė priežiūra:** Palaikyti pacientų stebėjimą per skriningo ciklus, kolonoskopijos procedūras ir gydymo kelius.

Naršykite toliau pateiktus skyrius, norėdami rasti profilius, terminologijos susiejimus ir išsamius pavyzdžius, reikalingus standarto diegimui.

### Prisidėjusieji

| Vardas | Vaidmuo | Organizacija |
|-----|-----|-----|
| [Igor Bossenko](https://about.askigor.eu) | Pagrindinis autorius | [HELEX Solutions](https://helex.solutions) |
| Audra Stepanauskaite | Bendraautoris | [LMB](https://lmb.lt) |
| [Kati Laidus](https://www.linkedin.com/in/kati-laidus/) | Bendraautoris | [HELEX Solutions](https://helex.solutions) |
| Martynas Bieliauskas | Bendraautoris | [LMB](https://lmb.lt) |
| Albert Kuslevic | Bendraautoris | [LMB](https://lmb.lt) |
