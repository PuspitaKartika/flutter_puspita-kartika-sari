import 'package:soal_prioritas1/soal_prioritas1.dart' as soal_prioritas1;

void main(List<String> arguments) {
  //tugas percabangan
  int nilai = 75;

  if (nilai > 70) {
    print("Nilai A");
  } else if (nilai > 40) {
    print("Nilai B");
  } else if (nilai > 0) {
    print("Nilai C");
  } else {
    print("");
  }

  // tugas perulanganS
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}
