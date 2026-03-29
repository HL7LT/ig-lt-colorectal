Profile: ColonoscopyCompositionLtColorectal
Parent: ImagingCompositionLt
Id: colonoscopy-composition-lt-colorectal
Title: "Colonoscopy Composition (LT Colorectal)"
Description: "Colonoscopy screening episode composition for the Lithuanian colorectal cancer prevention program. Links all observations and procedures from a colonoscopy examination into a single clinical document."
* ^url = $colonoscopy-composition-lt-colorectal-url
* ^status = #active

// Procedure section — colonoscopy procedure
* section[procedure].entry ^slicing.discriminator.type = #profile
* section[procedure].entry ^slicing.discriminator.path = "$this"
* section[procedure].entry ^slicing.ordered = false
* section[procedure].entry ^slicing.rules = #open
* section[procedure].entry contains
    colonoscopyProcedure 0..* and
    polypectomyProcedure 0..* and
    bleedingControl 0..*
* section[procedure].entry[colonoscopyProcedure] only Reference(ColonoscopyProcedureLtColorectal)
* section[procedure].entry[colonoscopyProcedure] ^short = "Colonoscopy procedure"
* section[procedure].entry[polypectomyProcedure] only Reference(PolypectomyProcedureLtColorectal)
* section[procedure].entry[polypectomyProcedure] ^short = "Polypectomy procedure"
* section[procedure].entry[bleedingControl] only Reference(ColonoscopyBleedingControlLtColorectal)
* section[procedure].entry[bleedingControl] ^short = "Bleeding control procedure"

// Findings section — polyps, tumors, bowel prep, scope reach
* section[findings].entry contains
    colonoscopeReach 0..1 and
    bowelPrepQuality 0..1 and
    polypFinding 0..* and
    tumorFinding 0..* and
    complicationPresence 0..1 and
    complicationType 0..* and
    wallInjuryDetail 0..*
* section[findings].entry[colonoscopeReach] only Reference(ColonoscopeReachLtColorectal)
* section[findings].entry[colonoscopeReach] ^short = "How far the colonoscope reached"
* section[findings].entry[bowelPrepQuality] only Reference(BowelPreparationQualityLtColorectal)
* section[findings].entry[bowelPrepQuality] ^short = "Bowel preparation quality assessment"
* section[findings].entry[polypFinding] only Reference(PolypFindingLtColorectal)
* section[findings].entry[polypFinding] ^short = "Individual polyp finding"
* section[findings].entry[tumorFinding] only Reference(TumorFindingLtColorectal)
* section[findings].entry[tumorFinding] ^short = "Tumor finding"
* section[findings].entry[complicationPresence] only Reference(ColonoscopyComplicationPresenceLtColorectal)
* section[findings].entry[complicationPresence] ^short = "Whether complications occurred"
* section[findings].entry[complicationType] only Reference(ColonoscopyComplicationTypeLtColorectal)
* section[findings].entry[complicationType] ^short = "Type of complication"
* section[findings].entry[wallInjuryDetail] only Reference(ColonoscopyWallInjuryDetailLtColorectal)
* section[findings].entry[wallInjuryDetail] ^short = "Wall injury detail (Sydney classification)"

// Additional sections
* section ^slicing.rules = #open
* section contains
    conclusions 0..1 and
    pathologyReport 0..1 and
    lifestyle 0..1 and
    vitals 0..1

* section[conclusions].title = "Conclusions"
* section[conclusions].code = $sct#722091001 "Conclusion interpretation document (record artifact)"
* section[conclusions].entry only Reference(ColonoscopyConclusionLtColorectal)

* section[pathologyReport].title = "Histopathology"
* section[pathologyReport].code = $sct#714797009 "Histologic test (procedure)"
* section[pathologyReport].entry only Reference(PathologyReportLtLab)

* section[lifestyle].title = "Lifestyle Factors"
* section[lifestyle].code = $sct#284535002 "Lifestyle (observable entity)"
* section[lifestyle].entry only Reference(Observation)
* section[lifestyle] ^short = "Cross-IG references to lifestyle observations"

* section[vitals].title = "Vital Signs"
* section[vitals].code = $sct#118227000 "Measurements and tests (procedure)"
* section[vitals].entry only Reference(Observation)
* section[vitals] ^short = "Cross-IG references to vital sign observations"
