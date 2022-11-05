import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../controller/Login_controller.dart';

import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Theme(
          data: ThemeData(
            primaryColor: Colors.blueGrey,
            scaffoldBackgroundColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.blueGrey,
                shape: const StadiumBorder(),
                maximumSize: const Size(double.infinity, 48),
                minimumSize: const Size(double.infinity, 48),
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: Color(0xFFF1E6FF),
              iconColor: Colors.blueGrey,
              prefixIconColor: Colors.blueGrey,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          child: Scaffold(
            body: Stack(
              children: [
                Blur(
                  blur: 10.0,
                  blurColor: Colors.blueGrey,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://i.ibb.co/GMqKfB3/13848622-5290880.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SafeArea(
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            textTheme: GoogleFonts.pacificoTextTheme().copyWith(
                              headline1: TextStyle(
                                color: Colors.grey[800],
                              ),
                              headline2: TextStyle(
                                color: Colors.grey[800],
                              ),
                              bodyText1: TextStyle(
                                color: Colors.grey[800],
                              ),
                              bodyText2: TextStyle(
                                color: Colors.grey[800],
                              ),
                            ),
                          ),
                          child: Text(
                            "",
                            style: GoogleFonts.pacifico(
                              color: Colors.white,
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Obx(
                          () => controller.isloading.value
                              ? LoadingAnimationWidget.discreteCircle(
                                  color: Colors.blue,
                                  size: 100.0,
                                )
                              : Form(
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        textInputAction: TextInputAction.next,
                                        initialValue: 'user@demo.com',
                                        cursorColor: Colors.blueGrey,
                                        onChanged: (value) {
                                          //
                                        },
                                        decoration: const InputDecoration(
                                          hintText: "Your email",
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Icon(Icons.person),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16.0),
                                        child: TextFormField(
                                          initialValue: '123456',
                                          textInputAction: TextInputAction.done,
                                          obscureText: true,
                                          cursorColor: Colors.blueGrey,
                                          onChanged: (value) {
                                            //
                                          },
                                          decoration: const InputDecoration(
                                            hintText: "Your password",
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Icon(Icons.lock),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 16.0),
                                      Obx(
                                        () => ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xff48B3EF),
                                            shape: BeveledRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                          ),
                                          onPressed: controller.isloading.value
                                              ? null
                                              : () => controller.doLoginEmail(),
                                          child: const Text("Login"),
                                        ),
                                      ),
                                      const SizedBox(height: 16.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          const Text(
                                            "Don’t have an Account ? ",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) {
                                                    return Container();
                                                  },
                                                ),
                                              );
                                            },
                                            child: const Text(
                                              "Sign Up",
                                              style: TextStyle(
                                                color: Colors.orange,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        if (MediaQuery.of(context).viewInsets.bottom == 0)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 26.0,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      "https://i.ibb.co/7WBNQ3M/281764.png",
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20.0,
                              ),
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 26.0,
                                  backgroundColor: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.network(
                                      "https://i.ibb.co/ThDwmPF/145802.png",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
