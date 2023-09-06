# Flutter Platform Widget

## Abstract
Abstract widget digunakan untuk memanfaatkan widget dengan gaya berbeda pada android dan iOS, yaitu ada MaterialApp dan CupertinoApp

## MaterialApp
MaterialApp merupakan widget dasar yang mengemas seluruh widget dalam aplikasi. 
MaterialApp biasa digunakan pada sistem Android, diimport dari package:flutter/material.dart

Struktur MaterialApp
```markdown
MaterialApp (
    theme : THemeData.dark(),
    home : const HomePage()
)
```
ket : home merupakan halaman utama yang akan ditampilkan ketika aplikasi di running 

Mengatur halaman juga dapat dilakukan dengan menggunakan routes dan initialRoute
```markdown
MaterialApp(
    theme : ThemeData.dark(),
    initialRoute: 'home',
    routes: {
        'home' : (_) => const HomePage(),
    }
);
```

## Scaffold
Scaffold adalah widget dasar untuk membangun sebuah halaman pada MaterialApp
Struktur scaffold : 
```markdown
Scaffold(
    appBar: AppBar(...),
    drawer: Drawer(...),
    body: ... ,
    bottomNavigatonBar: BottomNavigationBar(...),
);
```

## CupertinoApp
CupertinoApp adalah widget dasar yang mengemas seluruh widget dalam aplikasi, biasanya digunakan pada sistem iOS. CupertinoApp di-import dari package:flutter/cupertino.dart

Struktur cupertinoApp
```markdown
CupertinoApp(
    theme: _themeDark,
    home: const HomePage(),
);
```
tapi kita perlu membuat variabel _themeDark dulu karena CUpertino tidak menyediakan ThemeData.dark()

```markdown
final _themeDark = const CupertinoThemeData.raw(
    Brightness.dark,
    null,
    null,
    null,
    null,
    null,
);
```

## CupertinoPageScaffold
CupertinoPageScaffold merupakan widget dasar untuk membangun sebuah halaman pada CupertinoApp
Struktur CupertinoPageScaffold
```markdown
CupertinoPageScaffold(
    navigationBar: CupertinoNavigationBar(...),
    child: ...,
);



