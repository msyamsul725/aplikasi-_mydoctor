import 'package:flutter/material.dart';

class HeaderA extends StatefulWidget {
  const HeaderA({
    Key? key,
  }) : super(key: key);

  @override
  State<HeaderA> createState() => _HeaderAState();
}

class _HeaderAState extends State<HeaderA> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Hi M Daffa",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Image.network(
            "https://i.ibb.co/cgSFx6M/icons8-so-so-96.png",
            width: 24.0,
            height: 24.0,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
