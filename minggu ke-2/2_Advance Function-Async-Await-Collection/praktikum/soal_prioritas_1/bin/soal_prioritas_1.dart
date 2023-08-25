//soal pioritas 1
Future<List<int>> A(List<int> data, int pengali) async {
  List<int> result = [];

  await Future.forEach(data, (int value) async {
    int hasil = value * pengali;
    result.add(hasil);
  });

  return result;
}

void main() async {
  List<int> inputData = [1, 2, 3, 4, 5];
  int pengali = 2;

  List<int> B = await A(inputData, pengali);
  print('List Baru : $B');
}
