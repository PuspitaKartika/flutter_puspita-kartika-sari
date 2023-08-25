Advance Function, Async Await, Collection Dart

Anonymous Function
- Tidak memiliki nama
- FUngsi Sebagai data
ex : 
var hello = () {
  print('hello');
}

var jumlah = (int a, int b) {
  return a + b;
}

void main() {
 hello();
 print(jumlah(1,2));
}

Arrow Function
- Dapat memiliki nama atau tidak 
- Berisi 1 data (dari proses maupun data statis)
- Nilai return fungsi ini diambil dari data tersebut
ex : 
var hello = () => print('hello');
void main () {
  hello();
}
ket : 
- Fungsi hello melakukan print di dalamnya
- Fungsi jumlah memberi nilai saat dijalankan sehingga dapat dilakukan print

Async-Await
- Menjalankan beberapa proses tanpa perlu menunggu
- Proses ditulis dalam bentuk fungsi
- Await akan menunggu hingga proses astnc selesai

Tipa Data Future
- Data yang dapat ditunggu
- Membawa data return dari fungsi async


Collection
adalah Kumpulan data pada satu tempat
contoh collection 
1. List (Menyimpan data (elemen) secara berbaris)
2. Map (Menyimpan data secara key-value. Key berguna selayaknya index pada list)
