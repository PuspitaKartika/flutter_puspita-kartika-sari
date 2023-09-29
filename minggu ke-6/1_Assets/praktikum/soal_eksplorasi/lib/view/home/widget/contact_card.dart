import 'package:flutter/material.dart';

import '../../../utils/theme.dart';

// ignore: must_be_immutable
class ContactCard extends StatelessWidget {
  String name;
  String no;
  DateTime date;
  Color color;
  String path;
  final Function()? onTapDelete;
  final Function()? onTapEdit;

  ContactCard(
      {Key? key,
      required this.name,
      required this.no,
      required this.date,
      required this.color,
      required this.path,
      this.onTapDelete,
      this.onTapEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 0),
      leading: CircleAvatar(
        backgroundColor: lightPurple,
        child: Text(
          "A",
          style: thirdTextStyle,
        ),
      ),
      title: Text(
        name,
        style: primaryTextStyle,
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            no,
            style: secondTextStyle,
          ),
          Text("date : $date"),
          Row(
            children: [
              const Text("color : "),
              Container(
                width: 10,
                height: 10,
                color: color,
              )
            ],
          ),
          Text("file name: $path")
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: onTapEdit, icon: const Icon(Icons.edit)),
          IconButton(onPressed: onTapDelete, icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
