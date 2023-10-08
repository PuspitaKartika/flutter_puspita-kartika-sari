# MVVM Architecture

## MVVM (Model - View - View Model)
memisahkan logic dengan tampilan (View) ke dalam ViewModel
### keuntungan 
- Reusability 
Jika ada beberapa tampilan yang memerlukan alur logic yang sama, mereka bisa menggunakan View Model yang sama 
- Maintainability
Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic
- Testability 
Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktivitas pada pengujian 

### Struktur Direktori 
- Model memiliki 2 bagian, yaitu bentuk data yang akan digunakan dan sumber dari data tersebut
- Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel

### Model
- Bentuk data yang akan digunakan, dibuat dalam bentuk class
- Data-data yang dimuat, diletakkan pada property

### Model API
```markdown
class ContactAPI {
    static Future<List<Contact>> getContact() async {
        final response = await Dio()
         .get('https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contact');

         List<Contact> contact = (response.data as List)
            .map((e) => Contact(id: e['id'], name: e['name'], phone : e['phone']))
            .toList();
        return contacts;
    }
}
```

### View Model
- Menyimpan data-data dan logic yang diperlukan halaman ContactScreen
- Jika widget lain memerlukan logic yang sama, dapat menggunakan ViewModel ini juga 
```markdown
class ContactViewModel with ChangeNotifier {
    List<Contact> _contacts = [];

    List<Contact> get contacts => _contacts;

    getAllContacts() async {
        final c = await ContactAPI.getContacts();
        _contacts = c;
        notifyListeners();
    } 
}
```

### Mendaftarkan ViewModel
- Menggunakan MultiProvider agar dapat menggunakan banyak ViewModel
- MeterialApp sebagai child utama 
```markdown
runApp(
    MultiProvider(
        providers: [
            ChangeNotifierProvider(
                create: (_) => ContactViewModel(),
            )
        ],
        child : const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: ContactsScreen(),
        )
    )
);
```

### View
Menggunakan StatefulWidget
```markdown
@override
void didChangeDependencies(){
    super.didChangeDependencies();
    WidgetsBinding.intance!.addPostFrameCallback((timeStamp){
        Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
}
```

