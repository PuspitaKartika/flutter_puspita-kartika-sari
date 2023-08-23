import 'package:soal_eksplorasi/soal_eksplorasi.dart' as soal_eksplorasi;

void main(List<String> arguments) {
  //soal eksplorasi
  //1
  int bilangan = 5;
  bool isPrime = true; // Anggap awalnya bilangan adalah prima

  for (int i = 2; i <= bilangan / 2; i++) {
    if (bilangan % i == 0) {
      isPrime = false; // Jika ada pembagian tanpa sisa, bilangan bukan prima
      break;
    }
  }

  if (isPrime) {
    print("bilangan prima");
  } else {
    print("bukan prima");
  }
}
