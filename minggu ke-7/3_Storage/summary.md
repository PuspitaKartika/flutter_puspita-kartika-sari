# Storage
## Penyimpanan Lokal
Penyimpanan lokal diperlukan untuk efisiensi pengguaan internet. Ada beberapa cara implementasi penyimpanan lokal, contohnya seperti :
- SHared Preferences
- Local Database

### Shared Preference
Deskripsi dari Shared Preference : 
- Menyimpan data yang sederhana
- Penyimpanan dengan format key-value
- Menyimpan tipe data dasar seperti teks, angka, dan boolean
- Contoh penggunaan shared preference seperti menyimpan data login dan menyimpan riwayat pencarian. 

### dispose() 
dispose(), digunakan untuk menghindari kebocoran memori. Jadi pastikan jika menggunakan TextEditingController perlu menggunakan dispose. 
```markdown
@override
void dispose(){
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
}
```

## Local Database (SQLite)
### Deskripsi 
- Menyimpan dan meminta data dalam jumlah besar pada local device
- Bersifat privat
- Menggunakan SQLite database melalui package sqflite
- SQLite adalah database open source yang mendukung insert, read, update, dan remove data. 

### Membuat object database
```markdown
static late Database _database;
DatabaseHelper._internal(){
    _databaseHelper = this;
}
factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._internal();

Future<Database> get database async {
    _database = await _initializeDb();
    return _database;
}
```

### Membuka koneksi database dan membuat tabel nya 
```markdown
final String _tableName = 'tasks';
Fututre<Database> _initializeDb() async{
    var db = openDatabase(
        join(await getDatabasesPath(), 'task_db.db'),
        onCreate: (db, version) async {
            await db.execute(
                '''CREATE TABLE $_tableName(
                    id INTEGER PRIMARY KEY,
                    taskName Text
                )''',
            );
        },
        version : 1,
    ) ;
    return db;
}