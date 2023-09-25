# Flutter Navigation
## Navigation
Navigation merupakan proses berpindah dari halaman satu ke halaman lain

### Navigation Dasar
Perpindahan halaman menggunakan 
```markdown
Navigator.push()
```
Kembali ke halaman sebelumnya menggunakan 
```markdown
Navigator.pop()
```

### Mengirimkan Data ke Halaman Baru
menggunakan parameter pada constructor halaman
```markdown
ElevatedButton(
    child: const Text('Go To About Page'),
    onPressed: (){
        //saat tombol ditekan akan pindah kehalaman AboutScreen dengan parameter
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (_) => const AboutScreen(Parameter: 'Hore'),
            )
        )
    }
)
```
```markdown
class AboutScreen extends StatelessWidget {
    //property yang akan menerima parameter
    final String parameter;
    const ABoutScreen({Key? key, required this.parameter}) : super(key:key);

    @override
    Widget build(BuildContext context){
        return ...;
    }
}

## Navigation dengan Named Routes
Tiap halaman memiliki alamat yang disebut route
Perpindahan halaman menggunakan 
```markdown
Naavigator.pushNamed()
```
Kembali ke halaman sebelumnya menggunakan
```markdown
Navigator.pop()
```


## Memdaftarkan Route
kita harus menambahkan initialPoute dan routes pada MaterialApp. Tiap route adalah fungsi yang membentuk halaman
```markdown
MaterialApp(
    debugShowCheckedModeBanner: false

    //menentukan halaman yang pertama kali dibuka
    initialRoute: '/',

    //daftar halaman yang dpat dibuka
    routes: {
        '/' : (_) => const HomeScreen(),
        '/about': (_) => const AboutScreen(),
    }
);
```
```markdown
ElevatedButton(
    child: const Text('Go To About Page'),
    onPressed: (){
        Navigator.of(context).pushNamed('/about');
    }
);
```

### Mengirimkan data ke halaman baru
menggunakan arguments saat melakukan pushNamed
```markdown
ElevatedButton(
    child: const Text('Go To About Page'),
    onPressed: (){
        Navigator.of(context).pushNamed(
            '/about',
            arguments: 'Horee',
        )
    }
)
```
```markdown
class AboutScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context){
        final parameter = ModalPoute.of(context)!.settings.arguments as String;
        return ...;
    }
}
```