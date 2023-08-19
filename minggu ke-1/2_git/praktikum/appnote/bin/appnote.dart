import 'package:appnote/appnote.dart' as appnote;

void catatan(String judul, String isi) {
  print("Diary Puspita");
  print("Judul : $judul");
  print(isi);
}

void tugas(String task, String deadline) {
  print("Tugas : $task");
  print("Deadline : $deadline");
}

void main(List<String> arguments) {
  print('Hallooo. Are you okay?');
  catatan("17 Agustus 2023", "Hii, tau ga sih kalau ini hari kemerdekaan?");
  print("\nKumpulantugas ");
  tugas("RPL", "20 Agustus 2023");
}
