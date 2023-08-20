void main() {
  // Soal Prioritas 1

  //Rumus keliling persegi
  int kelilingPersegi(int sisi) {
    return 4 * sisi;
  }

  //Rumus luas persegi
  int luasPersegi(int sisi) {
    return sisi * sisi;
  }

  //Rumus kelilingPersegiPanjang
  int kelilingPersegiPanjang(int panjang, int lebar) {
    return 2 * (panjang + lebar);
  }

  //Rumus LuasPersegiPanjang
  int luasPersegiPanjang(int panjang, int lebar) {
    return panjang * lebar;
  }

  print("Persegi : ");
  print("keliling = ${kelilingPersegi(5)}"); //kelilingPersegi(10)
  print("luas = ${luasPersegi(5)}");

  print("\nPersegi Panjang");
  print("keliling = ${kelilingPersegiPanjang(10, 4)}");
  print("luas = ${luasPersegiPanjang(10, 4)}");
}
