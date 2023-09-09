# Flutter Layout 
Flutter layout digunakan untuk mengatur tata letak, layout berbentuk widget yang mengatur widget di dalamnya.

## Single-child Layout
### Container
- Membuat sebuah box
- Membungkus widget lain
- Box memiliki margin, padding, dan border

```markdown
Container(
    margin : const EdgeInsets.all(10),
    padding : const EdgeInsets.all(10),
    decoration : BoxDecoration(
        border : Border.all(),
    )
    child: Text("Halooo),
);
```

### Center
- Membuat sebuah box
- Membungkus widget lain
- Memenuhi lebar dan tinggi ruang di luarnya
- Meletakkan widget berapa di bagian tengah 
```markdown
Center(
    child: Text(teks);
)
```

### SizedBox
- Membuat sebuah box
- Membungkus widget lain
- Box dapat diatur lebar dan tingginya
- Lebih sederhana dari container
```markdown
SizedBox(
    width: 100,
    height: 150,
    child: Text(teks),
);
```

## Multi-child Layout 
### Column
Mengatur widget secara vertikal 
```markdown
Column(
    childern : const[
        Text(teks),
        Text(teks),
        Text(teks),
    ]
);
```

### Row
Mengatur widget secara horizontal
```markdown
Row(
    children: const[
        Text(teks),
        Text(teks),
        Text(teks),
    ]
);
```

### ListView
- Mengature widget dalam bentuk list
- Memiliki kemampuan scroll 
```markdown
ListView(
    children: [
        Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(border: Border.all()),
            child: const Text("halloo")
        )
    ]
);
```

### GridView
Mengatur widget dalam bentuk galeri
```markdown
GridView.count(
    crossAxisCount: angka,
    children: [],
);
```
