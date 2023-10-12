import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../model/proker_model.dart';

List<ProkerModel> prokerList = [
  ProkerModel(const Icon(Icons.person), "Study Date",
      "Program belajar bersama internal untuk memahami lebih dalam mengenai materi-materi teknologi, serta membangun kolaborasi dan kerjasama antar anggota divisi."),
  ProkerModel(const Icon(Icons.person_4), "Sharing session with Alumni",
      "Kesempatan bagi para alumni maupun Relasi anggota Sircle divisi IT untuk menyampaikan ilmu dan pengalaman sebagai motivasi untuk semua anggota Sircle Divisi IT kedepannya."),
  ProkerModel(const Icon(Icons.code), "Kaggle Tournament",
      "Kompetisi internal yang bertujuan untuk mengasah kemampuan dan menerapkan apa yang sudah dipelajari"),
  ProkerModel(const Icon(Icons.bug_report), "Bootcamp Bug Bounty",
      "Kegiatan pelatihan dan pengenalan Penetration Testing kepada anggota Sircle Divisi IT yang dilaksanakan secara daring dengan perangkat komputer masing-masing anggota."),
  ProkerModel(const Icon(Icons.people), "Lecthure",
      "Kegiatan belajar bersama anggota divisi TKSE dan yang menjadi pemateri adalah dosen dari institusi."),
];
