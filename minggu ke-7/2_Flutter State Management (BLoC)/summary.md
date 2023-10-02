# State Management (BLoC)

## Declarative UI
Flutter memiliki sifat declarative yang artinya flutter membangun UI nya pada screen untuk mencerminkan keadaan state saat ini 

### State 
- State adalah ketika sebuah widget sedang aktif dan widget tersebut menyimpan data di memori
- Flutter akan membangun ulang UI nya ketika ada state atau data yang berubah.
- Ada 2 jenis state dalam flutter, ephemeral state dan app state.

### Ephemeral State
- Digunakan ketika tidak ada bagian lain pada widget tree yang membutuhkan untuk mengakses data widgetnya, contohnya: PageView, BottomNavigationBar, Switch Button
- Tidak perlu state management yang komploks
- Hanya membutuhkan StatefulWidget dengan menggunakan fungsi setState()

### App State
- Digunakan ketika bagian yang lain suatu aplikasi membutuhkan akses ke data state widget, contohnya (login info, pengaturan preferensi pengguna, keranjang belanja, dimana informasi yang pengguna pilih di suatu screen yang mana informasi itu akan muncul di screen yang berbeda)

### Pendekatan State Management
- setState 
  Lebih cocok untuk penggunaan nya pada ephemeral state
- Provider
  Penggunaan untuk state management yang lebih kompleks seperti app state, pendekatan ini direkomendasikan oleh tim flutter karena mudah dipelajari.
- Bloc
  Menggunakan pola stream/observable, untuk memisahkan UI dengan bisnis logicnya

## BLoC
- BLoC (Business Logic Compoment)
- Memisahkan antara business logic dengan UI

### Cara kerja BLoc
- menerima event sebagai input
- dianalisa dan dikelola di dalam BLoC
- menghasilkan state sebagai output

## Stream
- Rangkaian proses secara asynchronous
- Actor utama di dalam BLoc
