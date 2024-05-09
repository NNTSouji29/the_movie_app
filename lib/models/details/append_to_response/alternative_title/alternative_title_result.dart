class AlternativeTitleResult {
  String? iso31661;
  String? title;
  String? type;

  AlternativeTitleResult({
    this.iso31661,
    this.title,
    this.type,
  });

  factory AlternativeTitleResult.fromJson(Map<String, dynamic> json) => AlternativeTitleResult(
        iso31661: json['iso_3166_1'],
        title: json['title'],
        type: json['type'],
      );
}
