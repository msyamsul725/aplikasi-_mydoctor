import 'package:flutter/material.dart';

class BannerB extends StatefulWidget {
  const BannerB({
    Key? key,
  }) : super(key: key);

  @override
  State<BannerB> createState() => _BannerBState();
}

class _BannerBState extends State<BannerB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            16.0,
          ),
        ),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 40.0,
              left: 40.0,
            ),
            width: 340,
            height: 180.0,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 80.0,
                    top: 30.0,
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "Covid 19",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40.0,
                        child: const Text(
                          "Protect your self and your family from Covid 19",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: Colors.white60,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100.0,
            height: 220.0,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://i.ibb.co/rH5wcNM/Lovepik-com-400237630-doctor.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(
                  16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
