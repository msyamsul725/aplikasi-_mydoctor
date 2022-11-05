import 'package:flutter/material.dart';

class Sbutton extends StatelessWidget {
  final Function onPressed;

  const Sbutton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey,
      ),
      onPressed: () => onPressed(),
      child: const Text("Save"),
    );
  }
}
