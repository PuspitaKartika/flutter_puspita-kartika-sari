import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';

class FileWIdget extends StatefulWidget {
  const FileWIdget({super.key});

  @override
  State<FileWIdget> createState() => _FileWIdgetState();
}

void _pickFile() async {
  final result = await FilePicker.platform.pickFiles();
  if (result == null) return;

  final file = result.files.first;
  _openFile(file);
}

void _openFile(PlatformFile file) {
  OpenFile.open(file.path);
}

class _FileWIdgetState extends State<FileWIdget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Pick File"),
        SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                _pickFile();
              },
              child: Text("Pick and Open File")),
        )
      ]),
    );
  }
}
