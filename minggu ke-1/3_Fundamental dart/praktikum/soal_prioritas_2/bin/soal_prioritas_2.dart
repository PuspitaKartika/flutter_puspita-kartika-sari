void main() {
  String namaDepan = "Puspita ";
  String namaTengah = "Kartika ";
  String namaBelakang = "Sari";
  print(namaDepan + namaTengah + namaBelakang);

  //volume tabung
  double pi, r, t;
  pi = 3.14;
  r = 7.0;
  t = 10.0;

  double volumeTabung(double r, double t) {
    return pi * r * r * t;
  }

  print("\nVolume tabung ${volumeTabung(r, t)}");
}
