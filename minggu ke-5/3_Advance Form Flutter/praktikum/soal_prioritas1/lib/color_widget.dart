import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorWidget extends StatefulWidget {
  const ColorWidget({super.key});

  @override
  State<ColorWidget> createState() => _ColorWidgetState();
}

class _ColorWidgetState extends State<ColorWidget> {
  Color _currentColor = Colors.orange;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Color"),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: _currentColor,
        ),
        SizedBox(
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
                        title: Text(
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
                              child: Text("Save"))
                        ],
                      );
                    });
              },
              child: Text("Pick Color", style: TextStyle(color: Colors.white))),
        )
      ]),
    );
  }
}
