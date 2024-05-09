class ProductionCountry {
  String? iso31661;
  String? name;

  ProductionCountry({
    this.iso31661,
    this.name,
  });

  factory ProductionCountry.fromJson(Map<String, dynamic> json) => ProductionCountry(
        iso31661: json['iso_3166_1'],
        name: json['name'],
      );
}
