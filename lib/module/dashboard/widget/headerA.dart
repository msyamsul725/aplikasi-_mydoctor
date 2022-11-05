import 'package:flutter/material.dart';

class HeaderB extends StatefulWidget {
  const HeaderB({
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderB> createState() => _HeaderBState();
}

class _HeaderBState extends State<HeaderB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: const Text(
        "What do you need ?",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
