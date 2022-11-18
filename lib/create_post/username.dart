import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ootd/create_post/user_with_email.dart';

import 'user_password.dart';

class LogUsername extends StatefulWidget {
  const LogUsername({super.key});

  @override
  State<LogUsername> createState() => _LogUsernameState();
}

class _LogUsernameState extends State<LogUsername> {
  @override
  Widget build(BuildContext context) {
    log("username");
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          // color: Colors.red,
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/back.png'),
          ),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 50,
                child: Container(
                  height: size.height * 0.84,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/hoverimage.png'))),
                  child: Column(
                    children: [
                      Container(
                        width: size.width - 10,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            children: [
                              SizedBox(
                                height: size.height / 8,
                              ),
                              Container(
                                height: 60,
                                child: const Image(
                                  image:
                                      AssetImage("assets/images/Profile.png"),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 7,
                              ),
                              const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xff8E8B8B))),
                                  hintText: "Username",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff6A6767),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => UserPassword(),
                                    ),
                                  );
                                },
                                child: Image(
                                  height: size.height / 18,
                                  image: AssetImage("assets/images/782.png"),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 5.5,
                              ),
                              Container(
                                // color: Colors.red,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Don't have an account?",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignIn()),
                                        );
                                      },
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 18,
                right: size.width * 0.40,
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
