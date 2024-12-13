Instance: Elternbefragung_HE
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung Hessen"
Description: "Elternbefragung Hessen"
* contained[+] = SEU-EF-NeinAbgeschlossenLaeuftGeplantVS
* contained[+] = DeuevAnlage8LaenderkennzeichenVS
* contained[+] = GenderDEVS
* contained[+] = InfektionsKrankheitVS
* contained[+] = ChronischeKrankheitenVS
* contained[+] = AtopischeErkrankungenVS
* contained[+] = SEU_EF_DauerHEVS
* id = "SEU-Elternbefragung-Hessen"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen Maximaldatensatz Hessen"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * insert addGroup(0, Schule & Vorgangsnummer)
  * item[+]
    * insert addItem(0.1, #string, Name der Schule)
    * required = true
  * item[+]
    * insert addItem(0.2, #string, Vorgangsnummer)
    * required = true
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
    * required = true
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(1.3, #date, Geburtsdatum)
    * insert initialExpression("%patient.birthdate")
    * required = true
  * item[+]
    * insert addItem(1.4, #choice, Staatsangehörigkeit)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
    //TODO: initial expression
  * item[+]
    * insert addItem(1.5, #choice, Geburtsland)
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * required = true
  * item[+]
    * insert addItem(1.6, #boolean, In Deutschland geboren)
    * required = true
  * item[+]
    * insert addItem(1.6.1, #date, Seit wann wohnt das Kind in Deutschland?)
    * insert enableWhenBoolean(1.6, =, false)
    * required = true
  * item[+]
    * insert addItem(1.8, #choice, Geschlecht)
    * answerValueSet = Canonical(GenderDEVS)
    * required = true
  * item[+]
    * insert addItem(1.9, #string, PLZ)
    * required = true
  * item[+]
    * insert addItem(1.10, #string, Wohnort)
    * required = true
  * item[+]
    * insert addItem(1.11, #string, Straße)
    * required = true
  * item[+]
    * insert addItem(1.11a, #string, Hausnummer)
    * required = true
//********************************************
// Personenbezogene Daten Personenberechtigter
* item[+]
  * insert addItem(2, #group, Personenbezogene Daten Personenberechtigter)
  * repeats = true
  * item[+]
    * answerValueSet = Canonical(GenderDEVS)
    * insert addItem(2.1, #choice, Geschlecht)
    * required = true
  * item[+]
    * insert addItem(2.2, #string, Nachname)
    * insert initialExpression("%patient.name[0].family")
    * required = true
  * item[+]
    * insert addItem(2.3, #string, Vorname)
    * insert initialExpression("%patient.name[0].given[0]")
    * required = true
  * item[+]
    * insert addItem(2.4, #string, PLZ)
  * item[+]
    * insert addItem(2.5, #string, Wohnort)
  * item[+]
    * insert addItem(2.6, #string, Straße)
  * item[+]
    * insert addItem(2.7, #string, Telefonnummer)
  * item[+]
    * insert addItem(2.8, #string, Email)
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.9, #choice, Staatsangehörigkeit)
    * required = true
  * item[+]
    * answerValueSet = Canonical(DeuevAnlage8LaenderkennzeichenVS)
    * insert addItem(2.10, #choice, Herkunftsland)
    * required = true
  * item[+]
    * insert addItem(2.12, #date, Geburtsdatum)
    * required = true
//********************************************
// Familiendaten
* item[+]
  * insert addItem(3, #group, Familiendaten)
  * item[+]
    * insert addItem(3.1, #integer, Anzahl der Geschwister)
    * required = true
  * item[+]
    * insert addItem(3.1.1, #group, Details Geschwister)
    * repeats = true
    * enableWhen[+]
      * question = "3.1"
      * operator = #> 
      * answerInteger = 0
    * item[+]
      * insert addItem(3.1.1.1, #date, Geburtsdatum des Geschwisters)
  * item[+]
    * insert addItem(3.2, #group, Familiäre Vorgeschichte)
    * item[+]
      * insert addItem(3.2.1, #boolean, Brillenträger)
      * insert addItem(3.2.5, #choice, Chronische Erkrankung)
      * answerValueSet = Canonical(ChronischeKrankheitenVS)
      * repeats = true
      * item[+]
        * insert enableWhenCode(3.2.5, =, ChronischeKrankheiten, sonstiges)
        * insert addItem(3.2.5.1, #string, [[Welche sonstige(n) chronischen Erkrankung(en)?]])
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItem(4.0b, #boolean, Ist das Kind in einem Kindergarten/einer Kindertageseinrichtung?)
    * required = true
  * item[+]
    * insert addItemWithSource(4.1d, #choice, [[Dauer Besuch Kita/Krippe]], #DE-HE)
    * answerValueSet = Canonical(SEU_EF_DauerHEVS)
    * required = true
  * item[+]
    * insert addItem(4.6b, #string, Name des Kindergartens)
    * enableWhen[+]
      * question = "4.0b"
      * operator = #=
      * answerBoolean = true
//********************************************
// Schwangerschaft und Geburt
* item[+]
  * insert addItem(5, #group, [[Schwangerschaft und Geburt]])
  * item[+]
    * insert addItem(5.2, #integer, [[Geburtsgewicht (in Gramm)]])
    * insert uunit(g, "Gramm")
    * required = true
  * item[+]
    * insert addItem(5.6, #boolean, [[Auffälligkeit/Krankheit in der Schwangerschaft]])
//********************************************
// Entwicklung
* item[+]
  * insert addItem(7, #group, [[Entwicklung]])
  * item[+]
    * insert addItemWithSource(7.11a, #boolean, [[Auffälligkeit des Verhaltens]], #DE-HE)
//********************************************
// Erkrankungen und gesundheitliche Einschränkungen
* item[+]
  * insert addItem(8, #group, [[Erkrankungen und gesundheitliche Einschränkungen]])
  * item[+]
    * insert addItem(8.3, #boolean, [[Sehstörung vorhanden?]])
  * item[+]
    * insert addItem(8.4, #boolean, [[Sprachstörung vorhanden?]])
  * item[+]
    * insert addItem(8.5, #boolean, [[Schielbehandlung?]])
  * item[+]
    * insert addItem(8.6, #boolean, [[Brillenträger?]])
  * item[+]
    * insert addItem(8.9, #boolean, [[Schwere Hörstörung vorhanden?]])
  * item[+]
    * insert addItem(8.12.g, #group, [[Infektionskrankheiten]])
    * repeats = true
    * item[+]
      * answerValueSet = Canonical(InfektionsKrankheitVS)
      * insert addItem(8.12.g.1, #open-choice, [[Infektionskrankheit]])
  * item[+]
    * insert addItem(8.15, #boolean, [[Krankenhausaufenthalt]])
    * item[+]
      * insert addItem(8.15.1, #string, [[Detaillierte Angaben zum Krankenhausaufenthalt?]])
      * insert enableWhenBoolean(8.15, =, true)
  * item[+]
    * answerValueSet = Canonical(AtopischeErkrankungenVS)  
    * insert addItem(8.16a, #choice, [[Besitzt Ihr Kind Allergien?]])
    * item[+]
      * insert addItem(8.16a.1, #string, [[Welche sonstigen Allergien?]])  
      * insert enableWhenCode(8.16a, =, AtopischeErkrankungenCS, sonstiges)
  * item[+]
    * insert addItem(8.23, #boolean, [[Regelmäßige Medikamenteneinnahme]])
  * item[+]
    * insert addItem(8.23.1, #string, [[Welches Medikament]])
    * insert enableWhenBoolean(8.23, =, true)   
    * repeats = true
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItem(9.2, #choice, [[Sprachtherapie]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * required = true
  * item[+]
    * insert addItem(9.3, #choice, [[Frühförderung]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * required = true
  * item[+]
    * insert addItem(9.4, #choice, [[Ergotherapie]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * required = true
  * item[+]
    * insert addItem(9.6, #choice, [[Physiotherapie]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * required = true
  * item[+]
    * insert addItem(9.9, #choice, [[Integrative Betreuung]])
    * answerValueSet = Canonical(SEU-EF-NeinAbgeschlossenLaeuftGeplantVS)
    * required = true
  * item[+]
    * insert addItem(9.10, #string, [[Sonstige Förderung]])
//********************************************
// Arzt
* item[+]
  * insert addGroup(11, Arzt)
  * item[+]
    * insert addItem(11.2, #string, Name Kinderarzt)
  * item[+]
    * insert addItem(11.3, #string, Name Facharzt)
//********************************************
// Sonstiges
* item[+]
  * insert addGroup(12, Sonstiges)
  * item[+]
    * insert addItem(12.4, #boolean, KISS Sprachscreening)
    * required = true
  * item[+]
    * insert addItem(12.8, #text, Sportart und Verein)
  * item[+]
    * insert addItem(12.9, #boolean, Schwimmfähig)
  * item[+]
    * insert addItem(12.10, #boolean, Seepferdchenabzeichen)
