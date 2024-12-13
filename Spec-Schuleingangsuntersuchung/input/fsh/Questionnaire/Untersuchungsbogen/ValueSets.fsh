CodeSystem: SaarlandAntwortenCS
Id: SaarlandAntwortenCS
Title: "SaarlandAntwortenCS"
* #0 "nein"
* #1 "ja"
* #2 "bei früherer Untersuchung vorgelegt"
* #5 "Alter nicht erreicht"
* #6 "Ausland"
* #9 "keine Angabe"

ValueSet: JaNeinVorgelegtVS
Id: JaNeinVorgelegtVS
Title: "JaNeinVorgelegtVS"
Description: "JaNeinVorgelegtVS"
* SaarlandAntwortenCS#1 "ja"
* SaarlandAntwortenCS#0 "nein"
* SaarlandAntwortenCS#2 "bei früherer Untersuchung vorgelegt"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #2
* ^expansion.contains[=].display = "bei früherer Untersuchung vorgelegt"

ValueSet: JaNeinAlterAuslandKeineAngabeVS
Id: JaNeinAlterAuslandKeineAngabeVS
Title: "JaNeinAlterAuslandKeineAngabeVS"
Description: "JaNeinAlterAuslandKeineAngabeVS"
* SaarlandAntwortenCS#1 "ja"
* SaarlandAntwortenCS#0 "nein"
* SaarlandAntwortenCS#5 "Alter nicht erreicht"
* SaarlandAntwortenCS#6 "Ausland"
* SaarlandAntwortenCS#9 "kein Angabe"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #1
* ^expansion.contains[=].display = "ja"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "nein"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #5
* ^expansion.contains[=].display = "Alter nicht erreicht"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #6
* ^expansion.contains[=].display = "Ausland"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenCS)
* ^expansion.contains[=].code = #9
* ^expansion.contains[=].display = "keine Angabe"

CodeSystem: SaarlandAntwortenUntersuchungenCS
Id: SaarlandAntwortenUntersuchungenCS
Title: "SaarlandAntwortenUntersuchungenCS"
* #A "Test auffällig, Arztkonsultation empfohlen"
* #X "Grenzwertiges Testergebnis bzw. in Kontrolle / Beratungsbedarf / Beratung erfolgt"
* #0 "Test konnte nicht standardisiert durchgeführt werden"
* #K "Keine Besonderheiten bei der Testdurchführung / kein auffälliger Test"
* #V "Test verweigert"
* #N "Nicht erhoben / nicht gesehen"

ValueSet: SaarlandAntwortenUntersuchungenVS
Id: SaarlandAntwortenUntersuchungenVS
Title: "SaarlandAntwortenUntersuchungenVS"
Description: "SaarlandAntwortenUntersuchungenVS"
* include codes from system SaarlandAntwortenUntersuchungenCS
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenUntersuchungenCS)
* ^expansion.contains[=].code = #A
* ^expansion.contains[=].display = "Test auffällig, Arztkonsultation empfohlen"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenUntersuchungenCS)
* ^expansion.contains[=].code = #X
* ^expansion.contains[=].display = "Grenzwertiges Testergebnis bzw. in Kontrolle / Beratungsbedarf / Beratung erfolgt"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenUntersuchungenCS)
* ^expansion.contains[=].code = #0
* ^expansion.contains[=].display = "Test konnte nicht standardisiert durchgeführt werden"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenUntersuchungenCS)
* ^expansion.contains[=].code = #K
* ^expansion.contains[=].display = "Keine Besonderheiten bei der Testdurchführung / kein auffälliger Test"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenUntersuchungenCS)
* ^expansion.contains[=].code = #V
* ^expansion.contains[=].display = "Test verweigert"
* ^expansion.contains[+].system = Canonical(SaarlandAntwortenUntersuchungenCS)
* ^expansion.contains[=].code = #N
* ^expansion.contains[=].display = "Nicht erhoben / nicht gesehen"
