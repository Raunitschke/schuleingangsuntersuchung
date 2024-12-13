Instance: ElternbefragungBW
InstanceOf: Questionnaire
Usage: #example
Title: "Elternbefragung BW"
Description: "Elternbefragung BW"
* contained[+] = GenderDEVS
* contained[+] = ErwerbsstatusInclSonstigesVS
* contained[+] = JaNeinWartelisteVS
* contained[+] = SEU_EF_MedienkonsumVS
* contained[+] = SEU_EF_DauerBWVS
* contained[+] = SEU_EF_BildungsabschlussBWVS
* id = "SEU-Elternbefragung-BW"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Elternbefragung"
* title = "SEU Elternfragebogen BW"
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft
* item[+]
  * type = #group
  * linkId = "1"
  * text = "(1) Personenbezogene Daten Kind"
  * item[+]
    * insert addItem(1.1, #string, Nachname des Kindes)
    * insert initialExpression("%patient.name[0].family")
  * item[+]
    * insert addItem(1.2, #string, Vorname des Kindes)
    * insert initialExpression("%patient.name[0].given[0]")
//********************************************
// Kinderbetreuung
* item[+]
  * insert addItem(4, #group, Kinderbetreuung)
  * item[+]
    * insert addItemWithSource(4.0c, #integer, [[Wie viele Stunden ist das Kind pro Woche in einer Kindertageseinrichtung?]], #DE-BW)
  * item[+]
    * insert addItemWithSource(4.1b, #choice, Wie lange besucht Ihr Kind bis jetzt eine Kindertageseinrichtung?, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_DauerBWVS)
  * item[+]
    * insert addItemWithSource(4.10, #boolean, [[Bekommt oder wartet Ihr Kind auf eine spezielle Förderung oder Therapie?]], #DE-SN)
//********************************************
// Förderungen
* item[+]
  * insert addItem(9, #group, [[Förderungen]])
  * item[+]
    * insert addItemWithSource(9.2a, #choice, [[Sprachförderung]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2a.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2a.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2a, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2b, #choice, [[Logopädie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2b.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2b.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2b, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2c, #choice, [[Ergotherapie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2c.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2c.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2c, =, ExpandedYesNoIndicator, Y) 
  * item[+]
    * insert addItemWithSource(9.2d, #choice, [[Psychotherapie]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2d.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2d.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2d, =, ExpandedYesNoIndicator, Y)
  * item[+]
    * insert addItemWithSource(9.2e, #choice, [[Andere Beratungs-, Förder- oder Heilmaßnahmen]], #DE-BW)
    * answerValueSet = Canonical(JaNeinWartelisteVS)
    * item[+]
      * insert addItemWithSource(9.2e.1, #date, [[Begonnen]], #DE-BW)
      * insert enableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
    * item[+]
      * insert addItemWithSource(9.2e.2, #date, [[Beendet]], #DE-BW)
      * insert enableWhenCode(9.2e, =, ExpandedYesNoIndicator, Y)
//********************************************
// Medienkonsum
* item[+]
  * insert addGroup(10, Medienkonsum)
  * item[+]
    * insert addItemWithSource(10.3a, #choice, [[Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Wochentag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
  * item[+]
    * insert addItemWithSource(10.4a, #choice, [[Wie lange sieht Ihr Kind durchschnittlich pro Tag Fernsehsendungen und Filme an und/oder spielt mit dem Smartphone/Tablet/Computer/ an der Spielkonsole? An einem Samstag/ Sonntag:]], #DE-BW)
    * answerValueSet = Canonical(SEU_EF_MedienkonsumVS)
//********************************************
// Informationen Eltern
* item[+]
  * insert addGroup(13, Informationen Eltern)
  * item[+]
    * insert addItemWithSource(13.0, #choice, [[Geschlecht 1. Elternteil]], #DE-BW)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItemWithSource(13.0a, #choice, [[Geschlecht 2. Elternteil]], #DE-BW)
    * answerValueSet = Canonical(GenderDEVS)
  * item[+]
    * insert addItemWithSource(13.1b, #choice, Schulabschluss 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.2b, #choice, Schulabschluss 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(SEU_EF_BildungsabschlussBWVS)
  * item[+]
    * insert addItemWithSource(13.5a, #choice, Berufstätigkeit 1. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS)  
  * item[+]
    * insert addItemWithSource(13.6a, #choice, Berufstätigkeit 2. Elternteil, #DE-BW)
    * answerValueSet = Canonical(ErwerbsstatusInclSonstigesVS) 
  * item[+]
    * insert addItemWithSource(13.17, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.18, #boolean, [[Deutsche Staatsangehörigkeit? Elternteil 2]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.19, #boolean, [[in Deutschland geboren? Elternteil 1]], #DE-BW)
  * item[+]
    * insert addItemWithSource(13.20, #boolean, [[in Deutschland geboren? Elternteil 2]], #DE-BW)
