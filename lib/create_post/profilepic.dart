import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePic extends StatefulWidget {
  const ProfilePic({super.key});

  @override
  State<ProfilePic> createState() => _ProfilePicState();
}

class _ProfilePicState extends State<ProfilePic> {
  @override
  Widget build(BuildContext context) {
    log("profilepic");
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
                            // mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: size.height / 5,
                              ),
                              const Text(
                                "Choose a profile picture",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(
                                    0xffFEFEFE,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 10,
                              ),
                              SvgPicture.asset(
                                "assets/images/4.svg",
                              ),
                              SizedBox(
                                height: size.height / 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Container(),
                                    ),
                                  );
                                },
                                child: const Image(
                                    image: AssetImage("assets/images/784.png")),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: size.height / 4.5,
                right: 30,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip",
                    // textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
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
