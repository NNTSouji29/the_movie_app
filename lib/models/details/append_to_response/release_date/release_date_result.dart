
class ReleaseDateResult {
  String? iso31661;
  List<ReleaseDate> releaseDates;
  ReleaseDateResult({
    this.iso31661,
    this.releaseDates = const [],
  });

  factory ReleaseDateResult.fromJson(Map<String, dynamic> json) => ReleaseDateResult(
        releaseDates: json['release_dates'] == null
            ? []
            : List<ReleaseDate>.from(json['release_dates'].map((x) => ReleaseDate.fromJson(x))),
      );
}

class ReleaseDate {
  String? certification;
  List<String> descriptors;
  String? iso6391;
  String? note;
  String? releaseDate;
  int? type;

  ReleaseDate({
    this.certification,
    this.descriptors = const [],
    this.iso6391,
    this.note,
    this.releaseDate,
    this.type,
  });

  factory ReleaseDate.fromJson(Map<String, dynamic> json) => ReleaseDate(
        certification: json['certification'],
        descriptors:
            json['descriptors'] == null ? [] : List<String>.from(json['descriptors'].map((x) => x)),
        iso6391: json['iso_639_1'],
        note: json['note'],
        releaseDate: json['release_date'],
        type: json['type'],
      );
}
