Instance: Untersuchungsbogen
InstanceOf: Questionnaire
Usage: #example
Title: "Untersuchungsbogen"
Description: "Untersuchungsbogen"
* contained[+] = SEU_UB_RegionArtVS
* contained[+] = SEU_UB_SpracheStudieVS
* contained[+] = SEU_UB_MeldungJugendamtVS
* contained[+] = SEU_UB_DurchfuehrungSaeuVS
* contained[+] = SEU_UB_VorstellungSchularztVS
* contained[+] = SEU_UB_WiedervorlageGrundVS
* contained[+] = SEU_UB_BesonderheitenVS
* contained[+] = SEU_UB_UntersuchungsstatusVS
* contained[+] = SEU_UB_MasernimpfungNichtErforderlichGrundVS
* contained[+] = SEU_UB_ImpfungAntwortVS
* contained[+] = SEU_UB_ImpfungAntwortOhneAuffrischungVS
* contained[+] = GenderDEVS
* contained[+] = SEU_UB_AnamneseBesonderheitenVS
* contained[+] = SEU_UB_AntwortGeschwisterVS
* contained[+] = SEU_UB_AntwortKindergartenBesuchVS
* contained[+] = SEU_UB_KindergartenArtVS
* contained[+] = SEU_UB_KontaktDeutscheSpracheVS
* contained[+] = SEU_UB_GesprocheneSpracheVS
* contained[+] = SEU_UB_HaendigkeitVS
* contained[+] = SEU_UB_SprachtherapieVS
* contained[+] = SEU_UB_TeilnahmeVorkursDeutschVS
* contained[+] = SEU_UB_JaNeinKeineAngabeVS
* contained[+] = SEU_UB_AntwortAugenarztVS
* contained[+] = SEU_UB_AntwortenHoerstoerungVS
* contained[+] = SEU_UB_AntwortErwachseneVS
* contained[+] = SEU_UB_GeburtslandVS
* contained[+] = SEU_UB_StaatsangehoerigkeitVS
* contained[+] = SEU_UB_SchulabschlussVS
* contained[+] = SEU_UB_ErwerbstaetigkeitVS
* contained[+] = SEU_UB_AuswaehlbareElternspracheVS
* contained[+] = SEU_UB_UntersuchungsstatusFdSScreeningvS
* contained[+] = SEU_UB_AntwortAuffaelligkeitVS
* contained[+] = SEU_UB_AntwortAuffaelligkeitBeurteilbarVS
* contained[+] = SEU_UB_AntwortenSAeUntersuchungVS
* contained[+] = SEU_UB_UntersuchungsergebnisseSAeUVS
* contained[+] = SEU_UB_VergleichSAeUntersuchungVS
* contained[+] = SEU_UB_AntwortTeilnahmeVS
* contained[+] = SEU_UB_ImpfstatusVS
* contained[+] = SEU_UB_GewichtsklassenVS
* contained[+] = SEU_UB_BewertungsvorschlagVS
* contained[+] = JaNeinKeineAngabeVS
* contained[+] = SEU_UB_BewertungErgebnisVS
* contained[+] = SEU_UB_0_4ImpfungenVS
* contained[+] = SEU_UB_0_3ImpfungenVS
* contained[+] = SEU_UB_0_2ImpfungenVS
* contained[+] = SEU_UB_GrippesaisonVS
* contained[+] = SEU_UB_RotaimpfungVS
* contained[+] = SEU_UB_HoertestDezibelVS
* contained[+] = SEU_UB_SehtestVisusVS
* contained[+] = SEU_UB_EntwicklungsbewertungVS
* contained[+] = SEU_UB_VorgangsstatusVS
* contained[+] = SEU_UB_UntersuchungsergebnisVS
* contained[+] = icd10gm-2024
* contained[+] = SEU_UB_UntersuchungsergebnisseIBAUVS
* contained[+] = SEU_UB_DeutschkenntnisseVS
* contained[+] = SEU_UB_SchulempfehlungVS
* contained[+] = SEU_UB_ImpfungenVS
* contained[+] = SEU_UB_AnzahlVS
* contained[+] = SEU_UB_BeeintraechtigungsartVS
* contained[+] = SEU_UB_EinschulungVS
* contained[+] = SEU_UB_ImpfschemaVS
* contained[+] = SEU_UB_VerwandtePersonDeutschkenntnisVS
* contained[+] = JaNeinVorgelegtVS
* id = "SEU-Untersuchungsbogen"
* url = "https://www.oegd.de/fhir/seu/Questionnaire/Untersuchungsbogen"
* title = "SEU Untersuchungsbogen Maximaldatensatz"
* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  Dieser Questionnaire ist zur Befüllung eines Arztes des Gesundheitsamtes bei der Schuleingangsuntersuchung vorgesehen.
</div>
"""
* insert launchContext("patient", #Patient, "Patientenkontext")
* status = #draft

* insert 1-af-stammdaten
* insert 2-af-untersuchungsverlauf
* insert 3-af-impfungen
* insert 4-af-gesfrueherkennung
* insert 5-af-anamnese
* insert 6-af-elternfragebogen
* insert 7-af-fdsscreening
* insert 8-af-schulaerztlicheuntersuchung
* insert 9-af-schulaerztlicheuntersuchung2
