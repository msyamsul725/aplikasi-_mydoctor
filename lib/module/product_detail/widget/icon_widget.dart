import 'package:flutter/material.dart';

class iconsWidget extends StatefulWidget {
  final Function onPressed;

  const iconsWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<iconsWidget> createState() => _iconsWidgetState();
}

class _iconsWidgetState extends State<iconsWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0.0,
          bottom: 0.0,
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.download,
                  color: Colors.blueGrey,
                  size: 24.0,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.blueGrey,
                  size: 24.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
