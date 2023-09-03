Deep Dive Into Dart Object Oriented Programming

Constructor adalah method yang dijalankan saat pembuatan object, constructor dapat menerima parameter dan tidak memiliki return. Nama constructor sama dengan nama class. 

Inherintance bertujuan agar kemampuan class yang sudah ada dapat dimiliki oleh class baru. Membuat class baru dengan memanfaatkan class yang sudah ada. Melakukan inherintance harus menambahkan extends saat pembuatan baru.

Method Overriding bertujuan agar class memiliki method yang sama, dengan proses yang berbeda. Method overriding harus menulis ulang method yang ada pada super-class. 

Melakukan Overriding : 
- Dilakukan pada class yang melakukan inheritance. 
- Method sudah ada pada class induk
- Method ditulis ulang seperti membuat method baru pada class anak. 
- Ditambahkan tanda @override di baris sebelum method dibuat. 

Interface 
- Berupa class 
- Menunjukan method apa saja yang ada pada suatu class
- Seluruh method wajib di-override
- Digunakan dengan menggunakan implements

Abstract Class 
- Berupa class abstrak
- Menunjukan method apa saja yang ada pada suatu class 
- Digunakan dengan menggunakan extends
- Tidak dapat dibuat object 
- Tidak semua method harus di-override 

Polymorphism 
- Kemampuan data berubah menjadi bentuk lain 
- Tipe data yang dapat digunakan adalah super class 
- Dapat dilakukan pada class dengan extends atau implements

Generics 
- Dapat digunakan pada class atau fungsi 
- Memberi kemampuan agar dapat menerima data dengan tipe yang berbeda. 
- Tipe data yang diinginkan, ditentukan saat membuat class atau menjalankan fungsi 

Membuat Class dengan generics 
- Class hadiah dapat dimasukkan data dengan tipe T 
- Tipe T dapat digunakan di seluruh hadiah

Enkapsulasi 
- Ini mempromosikan penyembunyian data 
- Peningkatan Integritas Data 
- Memungkinkan perubahan pada satu bagian kode tanpa memengaruhi bagian lain. 
- Mengurangi kompleksitas dan potensi bug dalam kode 

Modifikasi Aksen dalam Dart 
- Anggota Publik : Kata kunci public memungkinkan akses dari mana saja. 
- Anggota Privat: Awalan _private membatasi akses hanya dalam perpustakaan atau kelas 
- Anggota Dilindungi : Dart tidak memiliki kata kunci protected secara alami, tetapi secara konvensional, awalan _protected menunjukkan akses terbatas dalam perpustakaan 

Getter dan Setter 
- Getter dan setter adalah metode yang memungkinkan akses terkontrol ke variabel private. 
- Mereka memungkinkan enkapsulasi dengan menyediakan cara untuk membaca dan memodifikasi data privat, memastikan validasi atau perhitungan saat diperlukan 

