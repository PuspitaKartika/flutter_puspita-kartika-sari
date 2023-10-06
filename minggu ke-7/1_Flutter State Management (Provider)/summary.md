# Flutter Global State Management
## State
- State adalah data yang dapatdibaca saat pembuatan widget.
- State dapat berubah saat widget sedang aktif
- State hanya dimiliki oleh StatefulWidget

Global state diperlukan agar antara widget dapat memanfaatkan state yang sama dengan mudah. 

### Manfaat state
- Dibuat sebagai property dari class
- DIgunakan pada widget saat build

### Penggunaan method state
```markdown
ElevatedButton(
    child : Text('Tambah'),
    onPressed : (){
        setState(){
            number = number +1;
        }
    }
)
```

## Global State
Global state adalah state biasa yang dapat digunakan pada seluruh widget

## Provider
provider merupakan sebuah state management yang perlu diinstall agar dapat digunakan. 

### Instalasi Provider
- menampahkan package provider pada bagian dependencies dalam file pubspec.yaml
- Jalankan perintah flutter pub get

### Membuat State Provider
```markdown
class Contact with ChangeNotifier {
    List<Map<String, String>> _contacts = [];
    List<Map<String, String>> get contacts => _contacts = [];

    void add (Map<String, String> contact){
        _contacts.add(contact);
        notifyListeners();
    }  
}
```

### Menggunakan State dari provider
- SImpan provider dalam variable
- Ambil data dari provider melalui getter
```markdown
final contactProvider = Provider.of<contact_store.Contact>(context);
ListView.builder(
    itemCount: contactProvider.contacts.length,
    itemBuilder: (context, index){
        return ListTile(
            title: Text(contactProvider.contacts[index]['name'] ?? ''),
            subtitle: Text(contactProvider.contacts[index]['phone']?? ''),
        );
    }
)
```
