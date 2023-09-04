FLutter Command Line Interface & FLutter Package Management 

Flutter CLI adalah : 
- Alat yang digunakan untuk berinteraksi dengan Flutter SDK 
- Perintah dijalankan dalam terminal 

Important CLI Commands 
- Flutter Doctor = Perintah untuk menampilkan informasi software yang dibutuhkan flutter 
- Flutter Create = Perintah untuk membuat project aplikasi flutter baru di directory tertentu
- Flutter Run = Perintah untuk menjalankan project aplikasi di device yang tersedia
- Flutter Emulator = Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru 
  > flutter emulators
  > flutter emulators --launch <EMULATOR_ID>
  > flutter emulators --create[--name xyz]
  
- Flutter Channel = Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini 

- Flutter Pub 
  > Flutter pub add = untuk menambahkan packages ke dependencies yang ada di pubspec.yaml
  ex : flutter pub add <package_name>
  > Flutter pub get = untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
  ex : flutter pub get

- FLutter Build = Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll.
- Flutter Clean = Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator. Perintah ini akan memperkecil ukuran project tersebut 

Package Management 
- flutter mendukung sharing packages 
- Packages dibuat developers lain 
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- Mendapatkan packages di website pub.dev




