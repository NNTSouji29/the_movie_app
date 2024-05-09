class KeywordResult {
  int? id;
  String? name;

  KeywordResult({
    this.id,
    this.name,
  });

  factory KeywordResult.fromJson(Map<String, dynamic> json) => KeywordResult(
        id: json['id'],
        name: json['name'],
      );
}
