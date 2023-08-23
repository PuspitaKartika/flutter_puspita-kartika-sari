import 'package:soal_prioritas_2/soal_prioritas_2.dart' as soal_prioritas_2;

//no 3 prioritas2
void faktor(int angka) {
  print("\nSFaktorial dari $angka");
  for (int i = 1; i <= angka; i++) {
    if (angka % i == 0) {
      print(i);
    }
  }
}

void main(List<String> arguments) {
  //Soal prioritas 2
  //no 1
  for (int i = 0; i < 9; i++) {
    print((' ' * (8 - i)) + '*' * (2 * i - 1));
  }

  //no 2
  print("\nSOAL NO 2\n");
  for (int i = 0; i < 6; i++) {
    print((' ' * i) + '0' * (2 * (6 - i) - 1));
  }
  for (int i = 2; i < 7; i++) {
    print((' ' * (6 - i)) + '0' * (2 * i - 1));
  }
  print("\nSOAL NO 3");

  faktor(10);
  faktor(40);
  faktor(50);
}
