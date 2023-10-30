class JadwalSolatModel {
  String ashar;
  String dhuha;
  String dzuhur;
  String imsak;
  String isya;
  String magrib;
  String subuh;
  String tanggal;
  String terbit;

  JadwalSolatModel(
      {required this.ashar,
      required this.dhuha,
      required this.dzuhur,
      required this.imsak,
      required this.isya,
      required this.magrib,
      required this.subuh,
      required this.tanggal,
      required this.terbit});

  factory JadwalSolatModel.fromJson(Map<String, dynamic> json) =>
      JadwalSolatModel(
          ashar: json["ashar"] ?? "",
          dhuha: json["dhuha"] ?? "",
          dzuhur: json["dzuhur"] ?? "",
          imsak: json["imsak"] ?? "",
          isya: json["isya"] ?? "",
          magrib: json["maghrib"] ?? "",
          subuh: json["subuh"] ?? "",
          tanggal: json["tanggal"] ?? "",
          terbit: json["terbit"] ?? "");
}
