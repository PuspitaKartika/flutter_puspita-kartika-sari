import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:soal_prioritas1/bloc/contact/contact_cubit.dart';
import '../../utils/custom_textfield.dart';
import '../../utils/theme.dart';
import 'widget/contact_card.dart';
import 'widget/header_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final nameEdc = TextEditingController();
  final noHpEdc = TextEditingController();
  int indexContact = -1;
  final _formKey = GlobalKey<FormState>();
  DateTime dueDate = DateTime.now();
  final currentDate = DateTime.now();
  Color _currentColor = Colors.orange;
  String filePath = "";

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nama tidak boleh kosong';
    }

    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nomor tidak boleh kosong';
    }

    if (value.length < 8 || value.length > 15) {
      return 'number must be between 8 and 15 digits';
    }

    return null;
  }

  void resetField() {
    nameEdc.clear();
    noHpEdc.clear();
  }

  @override
  void dispose() {
    nameEdc.dispose();
    noHpEdc.dispose();
    super.dispose();
  }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) return;

    final file = result.files.first;
    setState(() {
      filePath = file.name;
    });
    _openFile(file);
  }

  void _openFile(PlatformFile file) {
    OpenFile.open(file.path);
  }

  // ignore: non_constant_identifier_names
  Widget ColorWidget() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("Color"),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: _currentColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(_currentColor),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          'Pick Your Color',
                        ),
                        content: BlockPicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            }),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Save"))
                        ],
                      );
                    });
              },
              child: const Text("Pick Color",
                  style: TextStyle(color: Colors.white))),
        )
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  Widget FileWidget() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const Text("Pick File"),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(
              onPressed: () {
                _pickFile();
              },
              child: const Text("Pick and Open File")),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightPurple,
          title: Text(
            "Contact",
            style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(30),
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text("Contact")),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/galeri');
                    },
                    child: const Text("Galeri"))
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderHome(),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      validator: validateName,
                      controller: nameEdc,
                      name: "Nama",
                      hintText: "Insert Your Name",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomTextField(
                      validator: validatePhoneNumber,
                      keyboardType: TextInputType.number,
                      controller: noHpEdc,
                      name: "Nomor",
                      hintText: "+62 ....",
                    ),
                    const SizedBox(
                      height: 15,
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Date"),
                        TextButton(
                            onPressed: () async {
                              final selectDate = await showDatePicker(
                                  context: context,
                                  initialDate: currentDate,
                                  firstDate: DateTime(1990),
                                  lastDate: DateTime(currentDate.year + 5));
                              setState(() {
                                if (selectDate != null) {
                                  dueDate = selectDate;
                                }
                              });
                            },
                            child: const Text("Select"))
                      ],
                    ),
                    Text(DateFormat('dd-MM-yy').format(dueDate))
                  ],
                ),
              ),
              ColorWidget(),
              FileWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: bottomColor),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          if (indexContact == -1) {
                            context.read<ContactCubit>().addContact(
                                name: nameEdc.text,
                                no: noHpEdc.text,
                                tanggal: dueDate,
                                color: _currentColor,
                                file: filePath);
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text("Berhasil menambahkan contact")));
                            resetField();
                          } else {
                            context.read<ContactCubit>().updateContact(
                                  index: indexContact,
                                  name: nameEdc.text,
                                  no: noHpEdc.text,
                                  tanggal: dueDate,
                                  color: _currentColor,
                                  file: filePath,
                                );
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("Berhasil mengupdate data")));
                            //     update(indexContact);
                            resetField();
                          }
                        }
                      },
                      child: Text(
                        "Submit",
                        style: primaryTextStyle.copyWith(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 16,
                  )
                ],
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      color: secondaryColor),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "List Contacts",
                        style: primaryTextStyle.copyWith(fontSize: 24),
                      ),
                      BlocBuilder<ContactCubit, ContactState>(
                          builder: (context, state) {
                        if (state is ContactSuccess) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: state.data.length,
                              itemBuilder: (context, index) {
                                final contact = state.data[index];
                                return ContactCard(
                                  name: contact.name,
                                  no: contact.no,
                                  date: contact.tanggal,
                                  color: contact.color,
                                  path: contact.file,
                                  onTapDelete: () {
                                    context
                                        .read<ContactCubit>()
                                        .removeContact(index: index);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(
                                            content: Text(
                                                "Berhasil Menghapus data")));
                                  },
                                  onTapEdit: () {
                                    // Set nilai TextEditingControllers dengan data yang sesuai
                                    nameEdc.text = contact.name;
                                    noHpEdc.text = contact.no;
                                    dueDate = contact.tanggal;
                                    _currentColor = contact.color;
                                    filePath = contact.file;
                                    indexContact = index;
                                  },
                                );
                              });
                        }
                        return Container();
                      })
                    ],
                  ))
            ],
          ),
        )
        );
  }
}
