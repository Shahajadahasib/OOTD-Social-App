import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'bio_record.dart';

class Varification extends StatefulWidget {
  const Varification({super.key});

  @override
  State<Varification> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Varification> {
  @override
  Widget build(BuildContext context) {
    log("verification");
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: size.height / 6,
                                  ),
                                  Center(
                                    child: SvgPicture.asset(
                                      "assets/images/Iconfeather-check-circle.svg",
                                      color: const Color(0xff09FF63),
                                      width: size.width / 5.5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height / 10,
                                  ),
                                  const Text(
                                    "Varification Successful",
                                    style: TextStyle(
                                        fontSize: 28,
                                        color: Colors
                                            .white), //color linier gradient #FF9EB5 100% #FFBD80 100%
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: size.width / 1.3,
                                    child: const Text(
                                      "Glad to have you back!",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xff4D4D4B),
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
                                          builder: (context) => BioRecord(),
                                        ),
                                      );
                                    },
                                    child: const Image(
                                        image: AssetImage(
                                            "assets/images/784.png")),
                                  ),
                                ],
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
