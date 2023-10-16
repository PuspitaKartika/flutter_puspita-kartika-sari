class User2 {
  int id;
  String nama;
  String telepon;

  User2({
    required this.id,
    required this.nama,
    required this.telepon,
  });

  factory User2.fromJson(Map<String, dynamic> json) {
    return User2(
      id: json['id'],
      nama: json['nama'],
      telepon: json['telepon'],
    );
  }
}
