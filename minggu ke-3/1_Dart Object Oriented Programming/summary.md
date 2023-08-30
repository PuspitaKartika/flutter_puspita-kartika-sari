OOP 
Merupakan program yang disusun dalam bentuk abstraksi object, data dan proses diletakkan pada abstraksi tersebut

Keuntungan menggunakan OOP
- Mudah di-troubleshoot
- Mudah digunakan ulang 

Komponen OOP : 
1. Class
2. Object 
3. Property
4. Method
5. Inheritance
6. Generics

Class adalah abstraksi dari sebuah benda (object). Class memiliki ciri-ciri yang disebut property. Class juga memiliki sifat dan kemampuan yang disebut method

Membuat Class:
- Menggunakan kata kunci "class"
- Memiliki nama
- Detail class diletakkan dalam kurawal 
ex : 
class Hewan {
 //property
}

Membuat Object 
- Bentuk sebenernya dari class
- DIsebut juga instance of class
- Diperlukan seperti data
ex : 
void main() {
  var h1 = Hewan();
  var h2 = Hewan();
}

Property
- Ciri-ciri suatu class
- Hal-hal yang dimiliki suatu class
- Memiliki sifat seperti variabel

Membuat Property
ex: class Hewan {
  var mata = 0;
  var kaki = 0;
  }
  
Mengakses Property
void main() {
  var h1 = Hewan();
  print(h1.mata);
}

Method 
- Sifat suatu class
- Aktivitas yNG dapat dikerjakan suatu class
- memiliki sifat seperti fungsi 

Membuat Method 
class Hewan {
  void bersuara() {
    print('');
 }
}

Menjalankan Method 
void main () {
  var h1 = Hewan();
  h1.bersuara();
}
