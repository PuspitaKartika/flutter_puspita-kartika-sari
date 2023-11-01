class AlQuranModel {
  int nomor;
  String nama;
  String namaLatin;
  int jumlahAyat;
  String tempatTurun;
  String arti;
  String deskripsi;
  AudioModel audioFull;
  List<AyatModel>? ayat;
  List<TafsirModel>? tafsir;
  SuratModel? suratSelanjutnya;
  SuratModel? suratSebelumnya;

  AlQuranModel(
      {required this.nomor,
      required this.nama,
      required this.namaLatin,
      required this.jumlahAyat,
      required this.tempatTurun,
      required this.arti,
      required this.deskripsi,
      required this.audioFull,
      this.ayat,
      this.tafsir,
      this.suratSelanjutnya,
      this.suratSebelumnya});

  factory AlQuranModel.fromJson(Map<String, dynamic> json) => AlQuranModel(
        nomor: json["nomor"],
        nama: json["nama"],
        namaLatin: json["namaLatin"],
        jumlahAyat: json["jumlahAyat"],
        tempatTurun: json["tempatTurun"],
        arti: json["arti"],
        deskripsi: json["deskripsi"],
        audioFull: AudioModel.fromjson(json["audioFull"]),
        ayat: json["ayat"] == null
            ? null
            : List<AyatModel>.from(
                json["ayat"].map((x) => AyatModel.fromjson(x))),
        tafsir: json["tafsir"] == null
            ? null
            : List<TafsirModel>.from(
                json["tafsir"].map((x) => TafsirModel.fromJson(x))),
        suratSebelumnya:
            json["suratSebelumnya"] == false || json["suratSebelumnya"] == null
                ? null
                : SuratModel.fromjson(json["suratSebelumnya"]),
        suratSelanjutnya: json["suratSelanjutnya"] == false ||
                json["suratSelanjutnya"] == null
            ? null
            : SuratModel.fromjson(json["suratSelanjutnya"]),
      );

  Map<String, dynamic> toJson() => {
        "nomor": nomor,
        "nama": nama,
        "namaLatin": namaLatin,
        "jumlahAyat": jumlahAyat,
        "tempatTurun": tempatTurun,
        "arti": arti,
        "deskripsi": deskripsi,
      };
}

class AudioModel {
  String? satu;
  String? dua;
  String? tiga;
  String? empat;
  String? lima;

  AudioModel({this.satu, this.dua, this.tiga, this.empat, this.lima});

  factory AudioModel.fromjson(Map<String, dynamic> json) => AudioModel(
      satu: json["01"],
      dua: json["02"],
      tiga: json["03"],
      empat: json["04"],
      lima: json["05"]);
}

class AyatModel {
  int noAyat;
  String teksArab;
  String teksLatin;
  String teksIndonesia;
  AudioModel audio;

  AyatModel(
      {required this.noAyat,
      required this.teksArab,
      required this.teksLatin,
      required this.teksIndonesia,
      required this.audio});

  factory AyatModel.fromjson(Map<String, dynamic> json) => AyatModel(
      noAyat: json["nomorAyat"],
      teksArab: json["teksArab"],
      teksLatin: json["teksLatin"],
      teksIndonesia: json["teksIndonesia"],
      audio: AudioModel.fromjson(json["audio"]));
}

class TafsirModel {
  int ayat;
  String teks;

  TafsirModel({required this.ayat, required this.teks});

  factory TafsirModel.fromJson(Map<String, dynamic> json) =>
      TafsirModel(ayat: json["ayat"], teks: json["teks"]);
}

class SuratModel {
  int? nomor;
  String? nama;
  String? namaLatin;
  int? jumlahAyat;

  SuratModel({this.nomor, this.nama, this.namaLatin, this.jumlahAyat});

  factory SuratModel.fromjson(Map<String, dynamic> json) => SuratModel(
      nomor: json["nomor"] ?? 1,
      nama: json["nama"] ?? "",
      namaLatin: json["namaLatin"] ?? "",
      jumlahAyat: json["jumlahAyat"] ?? 0);
}
