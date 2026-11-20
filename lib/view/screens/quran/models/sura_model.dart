class SuraModel {
  final int id;
  final String name;
  final int versesCount;

  SuraModel({required this.id, required this.name, required this.versesCount});

  factory SuraModel.fromMap(Map<String, dynamic> map) => SuraModel(
    id: map["id"],
    name: map["name"],
    versesCount: map["versesCount"],
  );
}
