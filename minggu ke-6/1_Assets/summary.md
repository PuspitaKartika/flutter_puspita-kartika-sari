# Assets
assets adalah file yang di bundle dan di deployed bersama dengan aplikasi. Tipe-tipa assets, seperti: static data (JSON files), icons, images, dan font file (tff)

Untuk menggunakan assets, kita harus mengatur pubspec.yaml. Pubspec.yaml terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan aplikasi.

## Image
Image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik, Fllutter mendukung format gambar seperti JPED, WebP, GIF, Animated Web/GIF, PNG, BMP, dan WBMP. Menampilkan gambar dari project assets dan internet. 

## Loading Images
- Gunakan widget Image
- Membutuhkan properti image dengan nilai class AssetImage()
```markdown
Image(
   image: AssetImage('assets/background.jpg')
)
```
- Menggunakan method Image.asset, mendapatkan image yang sudah ditambahkan dalam project
```markdown
Image.asset('assets/background.jpg'),
```
-Menggunakan method Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya
```Image.network('https://picsum.photos/id/1/200/300'),
```

## Font
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi. Penentuan font yang mau dipakai biasanya oleh UI designer. Penerapan font menggunakan custom font atau dari package.


