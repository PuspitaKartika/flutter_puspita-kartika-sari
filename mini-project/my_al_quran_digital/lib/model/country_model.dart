class CountryModel {
  String id;
  String nama;

  CountryModel({required this.id, required this.nama});

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      CountryModel(id: json["id"], nama: json["nama"]);
}
