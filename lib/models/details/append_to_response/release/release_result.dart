class ReleaseResult {
  String? certification;
  List<String> descriptors;
  String? iso31661;
  bool? primary;
  String? releaseDate;

  ReleaseResult({
    this.certification,
    this.descriptors = const [],
    this.iso31661,
    this.primary,
    this.releaseDate,
  });

  factory ReleaseResult.fromJson(Map<String, dynamic> json) => ReleaseResult(
        certification: json['certification'],
        descriptors:
            json['descriptors'] == null ? [] : List<String>.from(json['descriptors'].map((x) => x)),
        iso31661: json['iso_3166_1'],
        primary: json['primary'],
        releaseDate: json['release_date'],
      );
}
