ValueSet: BowelPrepScoreValuesVS
Id: bowel-prep-score-values
Title: "Bowel Preparation Score Values (Boston Scale)"
Description: "SNOMED CT codes representing the Boston Bowel Preparation Scale segment scores (0 to 3 points)."
* ^url = $bowel-prep-score-values-vs-url
* ^status = #active
* ^experimental = false
* ^publisher = "HL7 Lithuania"

* $sct#10311000132100 "Entire mucosa of colon segment seen well with no residual staining, small fragments of stool or opaque liquid (finding)" // 3 points
* $sct#10301000132102 "Minor amount of residual staining, small fragments of stool and/or opaque liquid, but mucosa of colon segment seen well (finding)" // 2 points
* $sct#10291000132101 "Portion of mucosa of colon segment seen, but other areas of colon segment not well seen due to staining, residual stool and/or opaque liquid (finding)" // 1 point
* $sct#10281000132103 "Unprepared colon segment with mucosa not seen due to solid stool that cannot be cleared (finding)" // 0 points