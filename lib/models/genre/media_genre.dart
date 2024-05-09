class MediaGenre {
  List<Genre> genres;

  MediaGenre({
    this.genres = const [],
  });

  factory MediaGenre.fromJson(Map<String, dynamic> json) => MediaGenre(
        genres: json['genres'] == null
            ? []
            : List<Genre>.from(json['genres'].map((x) => Genre.fromJson(x))),
      );
}

class Genre {
  int? id;
  String? name;

  Genre({
    this.id,
    this.name,
  });

  factory Genre.fromJson(Map<String, dynamic> json) => Genre(
        id: json['id'],
        name: json['name'],
      );
}
