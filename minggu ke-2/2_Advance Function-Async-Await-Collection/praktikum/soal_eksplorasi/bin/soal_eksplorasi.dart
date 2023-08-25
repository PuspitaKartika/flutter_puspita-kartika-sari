import 'package:soal_eksplorasi/soal_eksplorasi.dart' as soal_eksplorasi;

void main(List<String> arguments) {
  //soal eksplorasi
  List<String> input = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  List<String> unique = removeDuplicates(input);
  print(unique);

  List<String> B = [
    'amuse',
    'tommy kaira',
    'spoon',
    'HKS',
    'litchfield',
    'amuse',
    'HKS'
  ];
  List<String> uniqueB = removeDuplicates(B);
  print(uniqueB);
}

List<String> removeDuplicates(List input) {
  List<String> unique = [];
  for (String i in input) {
    if (!unique.contains(i)) {
      unique.add(i);
    }
  }
  return unique;
}
