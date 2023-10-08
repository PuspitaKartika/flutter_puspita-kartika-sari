# REST API Client
## Rest API (Representational State Transfer Application Programming Interface)

Rest API 
- Arsitektural yang memisahkan tampilan dengan proses bisnis 
- Bagian tampilan dengan proses bisnis berkirim data melalui HTTP Request

## HTTP 
HTTP adalah protokol yang digunakan untuk berkirim data pada internet, biasanya data tersebut berbentuk media web. 

## Pola Komunikasi 
- Client mengirim request
- Server mengolah dan membalas dengan memberi response

## Struktut Request
### URL
Alamat halaman yang akan diakses

### Method (GET, POST, PUT, DELETE)
menunjukan aksi yang diinginkan

### Header
Informasi tambahan terkait request yang dikirimkan

### Body
Data yang disertakan bersama request

## Struktuur Response
### Status Code
Kode yang mewakili keseluruhan response, baik sukses maupun gagal

### Header
Informasi tambahan terkait response yang diberikan 

### Body
Data yang disertakan bersama response

## DIO
Dio sebagai HTTP Client dan dimanfaatkan untuk melakukan REST API

### Penggunaan DIO
Mengambil data menggunakan DIO dan menampilkan hasilnya pada console
```markdown
import 'package:dio/dio.dart';

Dio()
 .get("https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
 .then((response){
    print(response);
 });

```


## Serialisasi JSON
- Cara penulisan data
- Umum digunakan pada REST API
- Jacascript Object Notation

### Mengubah strucktur data ke bentuk JSON menggunakan fungsi jsonEncode dari package dart:convert
```markdown
import "dart:convert";

void main(){
    var dataMap = { ... };
    var dataJSON = jsonEncode(dataMap);
    print(dataJSON);
}
```

### Menggunakan fungsi jsonDecode dari package dart:convert
```markdown
import "dart:convert";
void main(){
    var dataJSON = ' ... ';
    var dataMap = jsonDencode(dataJSON);
    print(dataMap);
}
```