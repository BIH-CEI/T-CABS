RuleSet: Grenzwertdefinition
* referenceRange MS
* referenceRange ^definition = "Grenzwerte, die bei Unter- oder Überschreitung einen Alarm auslösen."
  * low MS 
  * low ^short = "Untere Grenze des Parameters."
    * value 1..1 MS
    * unit MS
    * system = $UCUM
    * code 1..1 MS 
  * high MS 
  * high ^short = "Obere Grenze des Parameters."
    * value 1..1 MS
    * unit MS
    * system = $UCUM
    * code 1..1 MS
  * type = $cs-referenceRangeMeaning#therapeutic