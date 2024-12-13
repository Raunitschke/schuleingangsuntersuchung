Alias: $sdc-questionnaire-launchContext = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext
Alias: $sdc-questionnaire-launchContextCS = http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext
Alias: $sdc-questionnaire-initialExpression = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression
Alias: $sdc-questionnaire-observationLinkPeriod = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod
Alias: $sdc-questionnaire-observationExtract = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract
Alias: $unitsofmeasure = http://unitsofmeasure.org
Alias: $currency = urn:iso:std:iso:4217


RuleSet: launchContext(name, type, description)
* extension[+]
  * url = $sdc-questionnaire-launchContext
  * extension[+]
    * url = "name"
    * valueCoding = $sdc-questionnaire-launchContextCS#{name}
  * extension[+]
    * url = "type"
    * valueCode = {type}
  * extension[+]
    * url = "description"
    * valueString = {description}

RuleSet: initialExpression(expression)
* extension[+]
  * url = $sdc-questionnaire-initialExpression
  * valueExpression
    //* description = {description}
    * language = #text/fhirpath
    * expression = {expression}

RuleSet: observationLinkPeriod(duration)
* extension[+]
  * url = $sdc-questionnaire-observationLinkPeriod
  * valueDuration = {duration}

RuleSet: observationExtract
* extension[+]
  * url = $sdc-questionnaire-observationExtract
  * valueBoolean = true

RuleSet: addItem(linkId, type, text)
* linkId = "{linkId}"
* type = {type}
* text = "({linkId}) {text}"
* code = $elternfragebogenKodierungen#{linkId}

RuleSet: addItemWithSource(linkId, type, text, source)
* insert addItem({linkId}, {type}, [[{text}]])
* insert addSource({source})

RuleSet: addSource(source)
* extension[+]
  * url = Canonical(ItemSource)
  * valueCoding
    * system = $ISO31662
    * code = {source}

RuleSet: addItemMl(linkId, type, text, maxLen)
* insert addItem({linkId}, {type}, {text})
* maxLength = {maxLen}

RuleSet: addGroup(linkId, text)
* linkId = "{linkId}"
* type = #group
* text = "({linkId}) {text}"

RuleSet: uunit(code, display)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unit"
  * valueCoding = $unitsofmeasure#{code} {display}

RuleSet: minValueInt(value)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/minValue"
  * valueInteger = {value}

RuleSet: maxValueInt(value)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/maxValue"
  * valueInteger = {value}

RuleSet: calculatedExpression(name, expression)
* extension[+]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression"
  * valueExpression
    * name = {name}
    * language = #text/fhirpath
    * expression = {expression}

RuleSet: enableWhenCode(question, operator, system, code)
* enableWhen[+]
  * question = "{question}"
  * operator = #{operator}
  * answerCoding = {system}#{code}

RuleSet: enableWhenBoolean(question, operator, boolean)
* enableWhen[+]
  * question = "{question}"
  * operator = #{operator}
  * answerBoolean = {boolean}

RuleSet: enableWhenExists(question)
* enableWhen[+]
  * question = "{question}"
  * operator = #exists
  * answerBoolean = true

RuleSet: variable(name, expression)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/variable"
  * valueExpression
    * name = {name}
    * language = #text/fhirpath
    * expression = {expression}

RuleSet: debug(variable)
* item[+]
  * linkId = {variable}
  * type = #string
  * text = {variable}
  * readOnly = true
  * insert calculatedExpression("debug", {variable})

RuleSet: regEx(expression)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/regex"
  * valueString = {expression}

RuleSet: helpItem (id, text)
* linkId = "{id}"
* type = #display
* text = "{text}"
* insert itemControl(#help)

RuleSet: itemControl(code)
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
  * valueCodeableConcept = http://hl7.org/fhir/questionnaire-item-control{code}
