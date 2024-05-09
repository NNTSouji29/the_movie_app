class MediaExternalIds {
  String? imdbId;
  String? wikidataId;
  String? facebookId;
  String? instagramId;
  String? twitterId;

  MediaExternalIds({
    this.imdbId,
    this.wikidataId,
    this.facebookId,
    this.instagramId,
    this.twitterId,
  });

  factory MediaExternalIds.fromJson(Map<String, dynamic> json) => MediaExternalIds(
        imdbId: json['imdb_id'],
        wikidataId: json['wikidata_id'],
        facebookId: json['facebook_id'],
        instagramId: json['instagram_id'],
        twitterId: json['twitter_id'],
      );
}
