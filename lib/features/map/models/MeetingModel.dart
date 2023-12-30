class MeetingModel {
  final int identifier;

  /// Date
  final String datum;

  /// from (starting)
  final String von;

  /// to (ending)
  final String bis;

  /// topic / theme
  final String thema;

  /// Place / post code
  final String plz;

  /// Street Nr
  final String strasseNr;

  /// List of streets
  final List<String> aufzugsStrecke;

  /// Cardinal number
  final String lfdnr;

  MeetingModel(this.identifier, this.datum, this.von, this.bis, this.thema,
      this.plz, this.strasseNr, this.aufzugsStrecke, this.lfdnr);

  MeetingModel.fromJson(Map<String, dynamic> json)
      : identifier = json["id"],
        datum = json["datum"],
        von = json["von"],
        bis = json["bis"],
        thema = json["thema"],
        plz = json["plz"],
        strasseNr = json["strasse_nr"],
        aufzugsStrecke = json["aufzugsstrecke"].split("  ") ?? <String>[],
        lfdnr = json["lfdnr"];

  toJson() {
    return {
      "id": identifier,
      "datum": datum,
      "von": von,
      "bis": bis,
      "thema": thema,
      "plz": plz,
      "strasseNr": strasseNr,
      "aufzugsStrecke": aufzugsStrecke,
      "lfdnr": lfdnr
    };
  }
}
