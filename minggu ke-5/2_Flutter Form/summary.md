# Flutter Form 

## Form
Form menerima isian data dari pengguna, isian data dapat lebih dari satu. 
Membuat form harus menggunakan StatefulWidget, dimana keadaan form disimpan menggunakan GlobalKey<FormState>

## Input
### TextField
- Menerima isian data dari pengguna
- Isian data dapat lebih dari satu
- Data diambil menggunakan TextEditingController
- Isian data berupa teks

### Radio
- Memberikan opsi pada pengguna
- Hanya dapat memilih satu opsi
- Data diambil menggunakan property dengan tipe data sesuai value pada radio

### Checkbox
- Memberi opsi pada pengguna
- Dapat memilih beberapa opsi
- Data diambil menggunakan properti bertipe bool 

### Dropdown Button
- Memberi opsi pada pengguna
- Hanya dapat memilih satu opsi
- Opsi tidak ditampilkan di awal, hanya tampil jika ditekan
- Data diambil menggunakan property dengan tipe data sesuai value pada DropdownMenuItem.

### Button
- Bersifat seperti tombol
- Dapat melakukan sesuatu saat ditekan

### ElevatedButton
- Tombol yang timbul
- Jika ditekan, akan menjalankan onPressed

### IconButton
- Tombol yang hanya menampilkan icon
- Jika ditekan, akan menjalankan onPressed

