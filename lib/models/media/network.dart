class Network {
  String? name;
  int? id;
  String? logoPath;
  String? originCountry;

  Network({
    this.name,
    this.id,
    this.logoPath,
    this.originCountry,
  });

  factory Network.fromJson(Map<String, dynamic> json) => Network(
        name: json['name'],
        id: json['id'],
        logoPath: json['logo_path'],
        originCountry: json['origin_country'],
      );
}