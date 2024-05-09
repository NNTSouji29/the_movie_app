class MediaTrailer {
  String? iso6391;
  String? iso31661;
  String? name;
  String? key;
  String? site;
  int? size;
  String? type;
  bool? official;
  String? publishedAt;
  String? id;

  MediaTrailer({
    this.iso6391,
    this.iso31661,
    this.name,
    this.key,
    this.site,
    this.size,
    this.type,
    this.official,
    this.publishedAt,
    this.id,
  });

  factory MediaTrailer.fromJson(Map<String, dynamic> json) => MediaTrailer(
        iso6391: json['iso_639_1'],
        iso31661: json['iso_3166_1'],
        name: json['name'],
        key: json['key'],
        site: json['site'],
        size: json['size'],
        type: json['type'],
        official: json['official'],
        publishedAt: json['published_at'],
        id: json['id'],
      );

  
}
