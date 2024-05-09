class Data {
  String? homepage;
  String? overview;
  int? runtime;
  String? tagline;
  String? title;

  Data({
    this.homepage,
    this.overview,
    this.runtime,
    this.tagline,
    this.title,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        homepage: json['homepage'],
        overview: json['overview'],
        runtime: json['runtime'],
        tagline: json['tagline'],
        title: json['title'],
      );
}
