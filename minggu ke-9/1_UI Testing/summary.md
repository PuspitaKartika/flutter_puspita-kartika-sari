# UI Testing
Pengujian yang dilakukan pada tampilan suatu aplikasi untuk memastikan aplikasi dapat menerima interaksi dan memberi respon kepada pengguna. 

## UI Testing di Flutter
Disebut juga widget testing sehingga pengujian dilakukan pada widget dengan menuliskan script yang dapat dijalankan secara otomatis. 

## Keuntungan UI Testing 
- Memastikan seluruh widget memberi tampilan yang sesuai 
- Memastikan seluruh interaksi dapat diterima dengan baik
- Menjadi ketentuan yang harus diikuti saat diperlukan perubahan pada widget

## Melakukan UI Testing
### Instalasi Package Testing
Pada umumnya, package testing sudah ter-install sejak project pertama kali dibuat. Tetapi, cara ini dapat dilakukan, jika ingin meng-install secata manual. 
```markdown
dev_dependencies:
    flutter_test:
        sdk: flutter
```
### Penulisan Script Testing
- Dilakukan pada folder test
- Nama file harus diikuti _test.dart,
contoh contact_test.dart
- Tiap file berisi fungsi main() yang di dalamnya dapat dituliskan script testing
- Tiap skenario pengujian disebut test case
```markdown
void main(){
    testWidgests('Judul halaman harus ...', (WidgetTester tester) async {

    });

    testWidgets('Tombol harus ... ', (WidgetTester tester) async{

    });
}
```

### Script Testing
1. Test case diawali dengan testWidget dan diberi judul
2. Simulasi proses mengaktifkan halaman AboutScreen
3. Memeriksa apakah di halaman tersebut terdapat teks "About Screen"
```makdown
testWidgets('Judul halaman harus About Screen', (WidgetTester tester) async {
    await tester.pumpWidget(
        const MaterialApp(
            home: AboutScreen(),
        )
    );

    expect(find.text('About Screen'), findsOneWidget);
});
```
### Menjalankan Testing
- Perintak flutter test akan menjalankan seluruh file test yang dibuat
- Hasil dari perintah ini adalah lamanya waktu pengujian, total pengujian yang dilakukan, dan pesan bahwa pengujian berhasil

# Output Build Flutter
## Deskripsi
- File/berkas hasil keluaran dari project flutter
- Digunakan untuk merilis aplikasi ke App Store
- Terdiri dari format APK atau AAB untuk Android dan IPA untuk iOS
### output format APK
```markdown
flutter build apk
```
### Output format AAB
```markdown
flutter build appbundle
```
### Output format IPA
```markdown
flutter build ios
```

## Mode build
- Mode debug = UNtuk pengujian selama proses development
- Mode profile = untuk pengujian performa aplikasi
- Mode release = untuk merilis aplikasi ke Google Play Store dan Stores android lainnya.

## Build APK
Deskripsi 
- Hanya dapat berjalan di Android
- Memiliki format .apk
- Dapat di install langsung pada perangkat Android

### Proses sebelum build APK
- Mengatur nama aplikasi di AndroidManifest.xml
- Mengatur ikon aplikasi
- Mengatur perizinan aplikasi di AndroidManifest.xml