bool isPalindrome(String word) {
  // Menghapus spasi dan mengubah huruf menjadi lowercase
  String cleanWord = word.replaceAll(' ', '').toLowerCase();

  // Mengecek apakah kata merupakan palindrom atau bukan
  for (int i = 0; i < cleanWord.length ~/ 2; i++) {
    if (cleanWord[i] != cleanWord[cleanWord.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

void main() {
  //soal explorasi 1
  String input1 = "Kasur rusak";
  String input2 = "Mobil balap";

  print("====== Soal Eksplorasi no 1 =====");
  if (isPalindrome(input1)) {
    print("palindrom");
  } else {
    print("bukan palindrom");
  }

  if (isPalindrome(input2)) {
    print("palindrom");
  } else {
    print("bukan palindrom");
  }
}
