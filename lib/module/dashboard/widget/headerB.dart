import 'package:flutter/material.dart';

class HeaderC extends StatefulWidget {
  const HeaderC({
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderC> createState() => _HeaderCState();
}

class _HeaderCState extends State<HeaderC> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: const Text(
        "Upcomming Schedule",
        textAlign: TextAlign.left,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}
