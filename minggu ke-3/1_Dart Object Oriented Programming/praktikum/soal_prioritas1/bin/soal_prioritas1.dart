class Hewan {
  var berat = 0;
}

class Mobil {
  var kapasitas;
  List<Hewan> muatan = [];

  int totalMuatan() {
    int total = 0;
    for (var hewan in muatan) {
      total += hewan.berat;
    }
    return total;
  }

  void tambahMuatan(Hewan hewan) {
    if (totalMuatan() + hewan.berat > kapasitas) {
      print("kapasitas penuh, Hewan gagal ditambahkan");
    } else {
      muatan.add(hewan);
      print("Hewan ditambahkan");
    }
  }
}

void main() {
  var kucing = Hewan();
  kucing.berat = 2;
  var meong = Hewan();
  meong.berat = 4;
  var ikan = Hewan();
  ikan.berat = 2;

  var pickup = Mobil();
  pickup.kapasitas = 7;
  pickup.tambahMuatan(kucing);
  pickup.tambahMuatan(ikan);
  pickup.tambahMuatan(meong);
}
