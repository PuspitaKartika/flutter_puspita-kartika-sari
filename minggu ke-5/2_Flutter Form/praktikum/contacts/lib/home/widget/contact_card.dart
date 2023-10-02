import 'package:contacts/utils/theme.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  String name;
  String no;
  final Function()? onTapDelete;
  final Function()? onTapEdit;

  ContactCard(
      {Key? key,
      required this.name,
      required this.no,
      this.onTapDelete,
      this.onTapEdit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
      subtitle: Text(
        no,
        style: secondTextStyle,
      ),
      trailing: 
      Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(onPressed: onTapEdit, icon: const Icon(Icons.edit)),
          IconButton(onPressed: onTapDelete, icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
