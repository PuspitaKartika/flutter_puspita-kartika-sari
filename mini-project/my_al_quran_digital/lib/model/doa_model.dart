class DoaModel {
  int? id;
  String? grup;
  String? nama;
  String? ar;
  String? tr;
  String? idn;
  String? tentang;
  String? mood;
  String? tag;

  DoaModel(
      {this.id,
      this.grup,
      this.nama,
      this.ar,
      this.tr,
      this.idn,
      this.tentang,
      this.mood,
      this.tag});

  factory DoaModel.fromJson(Map<String, dynamic> json) => DoaModel(
      id: json["id"],
      grup: json["grup"],
      nama: json["nama"],
      ar: json["ar"],
      tr: json["tr"],
      idn: json["idn"],
      tentang: json["tentang"],
      mood: json["mood"],
      tag: json["tag"]);
}
