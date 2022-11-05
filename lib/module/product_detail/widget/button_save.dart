import 'package:flutter/material.dart';

class buttonSave extends StatelessWidget {
  final Function onPressed;

  const buttonSave({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      height: 90.0,
      child: ElevatedButton.icon(
          icon: const Icon(Icons.price_change),
          label: const Text("Buy"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueGrey[900],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16), // <-- Radius
            ),
          ),
          onPressed: () => onPressed()),
    );
  }
}
