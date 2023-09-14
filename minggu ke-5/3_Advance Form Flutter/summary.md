# Advance Form Input
## Interactive Widget
- Interaksi antara aplikasi dan user
- Mengumpulkan input dan feedback dari user

## Date Picker
- Date Picker adalah widget dimana user bisa memasukan tanggal 
- Tanggal kelahiran, waktu pemesanan tiket, waktu reservasi restoran, jadwal meeting, dll. 
### Cara Membuat Date Picker
- Menggunakan fungsi bawaan flutter showDatepICKER
- Fungsi showDatePicker memiliki tipe data future
- Menampilkan dialog material design data picker
```markdown
final selecrDate = await showDatePicker(
    context: context,
    initialDate: currentDate,
    firstDate: DateTime(1990),
    lastDate: DateTime(currentDate.year + 5),
);
```
- Menambahkan package intl di pubspec.yaml
```markdown
dependencies:
  flutter:
    sdk: flutter
  intl: ^0.17.0
```
- Mempersiapkan variabel
```markdown
class _HomePageState extends State<HomePage>{
    DateTime _dueDate = DateTime.now();
    final currentDate = DateTime.now();
}
```

## Color Picker
Color picker merupakan widget dimana user bisa memilih color. Penggunaan color picker bisa digunakan untuk berbagai macam kondisi.
### Cara Membuat Color Picker
- Menggunakan packages flutter_collorpicker
- Menambahkan packages flutter_colorpicker di pubspec.yaml


## File Picker
File Picker adalah kemampuan widget untuk mengakses storage. Memilih dan membuka file

### Cara Membuat File Picker
- Menggunakan packages file_picker dan open_file
- Menambahkan packages file_picker dan open_file di pubspec.yaml
- Import packages file_picker dan open_file dalam file.dart

