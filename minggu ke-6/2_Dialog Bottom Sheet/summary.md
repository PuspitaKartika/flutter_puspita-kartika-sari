# Dialog & Bottom Sheet

## Alert Dialog
Alert Dialog adalah tampilan android, dari material design, yang menginformasikan pengguna tentang situasi tertentu. Bisa digunakan untuk mendapatkan input dari user. Alert Dialog membutuhkan helper method showDialog

### code alert dialog
```markdown
onPressed: (){
    showDialog(
        context : context,
        builder: (context) => AlertDialog(
            context : const Text('Are you sure?'),
            actions: [
                TextButton(
                    onPressed: (){
                        Navigator.pop(context);
                    }
                    child: const Text('NO'),
                ),
                TextButton(
                    onPressed: onPressed,
                    child: const Text('YES'),
                )
            ]
        )
    );
}
```
ket : Untuk menambahkan Alert Dialog perlu memanggil fungsi showDialog di dalam fungsi onPressed pada IconButton. showDialog membutuhkan context dan builder. Di builder nya akan me-return AlertDialog.

AlertDialog juga menyediakan properti seperti content dan actions. Content bisa dimasukan widget text, gambar dan animasi gambar. Actions bisa ditambahkan button untuk menerima respon dari user.

## Bottom Sheet
Bottom sheet muncul dari bawah layar aplikasi, menggunakan fungsi bawaan flutter showModalBottomSheet. Membutuhkan 2 propert, yaitu context dan builder.

### code bottom sheet
```markdown
onPressed: (){
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderPadius.vertical(
                top: Radius.circular(20),
            )
        ),
        context: context,
        builder: (context) => Container(),
    )
}
```




