import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ootd/create_post/varification.dart';

class UserPassword extends StatefulWidget {
  const UserPassword({super.key});

  @override
  State<UserPassword> createState() => _MyWidgetState();
}

bool isChecked = false;

class _MyWidgetState extends State<UserPassword> {
  @override
  Widget build(BuildContext context) {
    log("user_password");
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
                                height: size.height / 5,
                              ),
                              Container(
                                height: 60,
                                child: const Image(
                                  image:
                                      AssetImage("assets/images/Profile.png"),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 8,
                              ),
                              const TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xff8E8B8B))),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                    color: Color(0xff6A6767),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 70,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        activeColor: Colors
                                            .blue, //The color to use when this checkbox is checked.
                                        checkColor: Colors
                                            .black, // The color to use for the check icon when this checkbox is checked.
                                        value: isChecked,
                                        onChanged: (value) {
                                          setState(() {
                                            isChecked = value!;
                                          });
                                        },
                                      ),
                                      const Text(
                                        "Remember Me",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff8E8B8B),
                                        ),
                                      )
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Varification(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Forget Password?",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Color(0xff8E8B8B),
                                      ),
                                    ),
                                  ),
                                  // const Text("Forget Password?"),
                                ],
                              ),
                              SizedBox(
                                height: size.height / 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Varification(),
                                    ),
                                  );
                                },
                                child: const Image(
                                    image: AssetImage("assets/images/784.png")),
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
    ;
  }
}
