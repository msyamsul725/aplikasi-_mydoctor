import 'package:flutter/material.dart';

class Notif extends StatefulWidget {
  const Notif({
    Key? key,
  }) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://i.ibb.co/PGv8ZzG/me.jpg",
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.notifications,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
