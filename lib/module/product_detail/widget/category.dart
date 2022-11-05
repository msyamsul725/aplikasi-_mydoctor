import 'package:flutter/material.dart';

class category extends StatefulWidget {
  const category({
    Key? key,
  }) : super(key: key);

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: Text(
            "Women",
            style: TextStyle(
              fontSize: 10.0,
            ),
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.orange,
        ),
        Text(
          "(4.8)",
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
      ],
    );
  }
}
