import 'package:soal_prioritas_2/soal_prioritas_2.dart' as soal_prioritas_2;

void main() async {
  //soal prioritas 2
  //no 1
  List data_list = [
    ["nama", "Puspita"],
    ["prodi", "Teknik Informatika"],
    ["semester", "5"]
  ];

  Map dataMap =
      Map.fromEntries(data_list.map((item) => MapEntry(item[0], item[1])));

  print("Soal no 1");
  print(dataMap);

  //no 2
  List<int> nilai = [7, 5, 3, 5, 2, 1];
  double total = 0;

  for (int i in nilai) {
    total += i;
  }
  //pembulatan ke atas
  int rata = (total / nilai.length).ceil();
  print("\nSoal no 2");
  print(rata);

  //no 3
  print("Soal no 3");
  int nilaiFaktorial = await faktorial(5);
  print(nilaiFaktorial);
}

// no 3
Future<int> faktorial(int n) async {
  if (n == 0 || n == 1) {
    return 1;
  }

  int result = 1;
  for (int i = 2; i <= n; i++) {
    result *= i;
  }

  return result;
}
