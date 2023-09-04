Introduction Flutter and Flutter Widget

Flutter adalah alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, dekstop, dan web

Keunggulan Flutter 
- Mudah digunakan dan dipelajari 
- Produktivitas tinggi 
- Dokumentasi lengkap
- Komunitas yang berkembang 

Bagian dari Flutter : 
1. SDK (Software Development Kit)
2. Framework

File Utama 
- pertama kali dibaca dan dijalankan adalah file yang memiliki fungsi main dalam direktori lib

Widget 
- Digunakan untuk membentuk antarmuka (UI)
- Berupa class
- Dapat terdiri dari beberapa widget lainnya 

Jenis widget : 
- Stateless
- Stateful

Stateless Widget 
- Tidak bergantung pada perubahan data 
- Hanya fokus pada tampilan 
- Dibuat dengan extends pada class StatelessWidget

Stateful Widget 
- Mementingkan pada perubahan data 
- Dibuat dengan extends pada class StatefulWidget
- 1 Widget menggunakan 2 class (widget dan state)

Built in Widget adalah 
- Widget yang dapat langsung digunakan 
- Sudah ter-install bersama Flutter 

Scaffold digunakan untuk membuat sebuah halaman. 
Didalam scaffold terdapat appBar, body, floatingActionButton, dll. 
