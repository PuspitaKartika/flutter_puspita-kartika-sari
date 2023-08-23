Branch, Loop, Function Dart

Pengambilan Keputusan (Menentukan alur program pada kondisi tertentu)

IF 
- Memerlukan nilai bool (dari operator logical atau comparison)
- Menjalankan bagian proses jika nilai bool bernilai true

IF-ELSE
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false

Sisipan ELSE-IF
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false
- Menambah pengujian nilai bool lain

Perulangan (menjalankan proses berulang kali)
jenis perulangan 
1. For 
   - Diketahui beberapa kali perulangan terjadi 
   - Memerlukan nilai awal
   - Memerlukan nilai bool, jika true maka perulangan dilanjutkan 
   - Memerlukan pengubahan nilai 

  ex : 
  for (var i =0; i< 10; i++){
    print(i); 
  }
  
2. While
   - Tidak diketahui berapa kali perulangan terjadi
   - Memerlukan nilai bool, jika true maka perulangan dilanjutkan
   
   ex: 
   var i = 0;
   while (i < 10) {
      print(i);
      i++
   }
   
3. Do-While
   - Mengubah bentuk while
   - Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

   ex : 
   var i = 0;
   do {
      print(i);
  } while (i<10);
  
  
=== Break dan Continue ===
Break menghentikan seluruh proses perulangan 
Continue menghentikan satu kali proses perulangan 
== Break == 
for (var i =0; true; i++){
    if (i == 10){
      break;
    }
    print(i);
    
  }
  
== Continue == 
for (var i =0; true; i++){
    if (i == 10){
      continue;
    }
    print(i);
    
  }
  
=== Fungsi ===
Fungsi adalah kumpulan kode yang dapat digunakan ulang 
Fungsi adalah kumpulan perintah yang dapat digunakan berkali-kali, cukup dengan mengubah fungsi sekali, penggunaan lainnya akan ikut berubah. 

Membuat FUngsi 
tipe_data nama_fungsi() {
  // perintah yang dijalankan saat fungsi dipanggil 
}

Memanggil fungsi 
nama_fungsi();

Fungsi Dengan parameter
tipe_data nama_fungsi(tipe_data nama_parameter) {
 // perintah yang dijalankan saat fungsi dipanggil 
}
ex : 
   void tampil(String teks) {
     print(text)
   }

   void main() {
     tampil('halo');
   }
   
Fungsi dengan return 
ex :    
  int jumlah(int a, int b) {
     return a+b;
   }

   void main() {
     var hasil = jumlah(1,2);
     print(hasil);
   }
