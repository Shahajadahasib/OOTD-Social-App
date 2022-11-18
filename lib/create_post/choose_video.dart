import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseVideo extends StatefulWidget {
  const ChooseVideo({super.key});

  @override
  State<ChooseVideo> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ChooseVideo> {
  @override
  Widget build(BuildContext context) {
    log("choose_video");
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
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: size.height / 5,
                      ),
                      Container(
                        width: size.width - 10,
                        // color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 50),
                          child: Column(
                            children: [
                              const Text(
                                textAlign: TextAlign.center,
                                "Choose a profile video",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFEFEFE),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 15,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  alignment: Alignment.center,
                                  height: size.height * 0.080,
                                  width: size.width * 0.39,
                                  decoration: BoxDecoration(
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xFFA1C1FF),
                                          Color(0xFF2DFFD9),
                                        ],
                                        begin: FractionalOffset(0.0, 0.0),
                                        end: FractionalOffset(1.0, 0.0),
                                        stops: [0.0, 1.0],
                                        tileMode: TileMode.clamp,
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.red),
                                  child: const Text(
                                    textAlign: TextAlign.center,
                                    "Select",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffFEFEFE),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 10,
                              ),
                              const Align(
                                alignment: Alignment.topRight,
                                child: Text(
                                  "Skip",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.blue),
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
