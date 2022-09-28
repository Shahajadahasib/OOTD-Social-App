import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ootd/create_post/profilepic.dart';

class BioRecord extends StatefulWidget {
  const BioRecord({super.key});

  @override
  State<BioRecord> createState() => _BioRecordState();
}

class _BioRecordState extends State<BioRecord> {
  @override
  Widget build(BuildContext context) {
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
                              const Text(
                                "Who are you?",
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const Text(
                                "Record your bio",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff4D4D4B),
                                ),
                              ),
                              SizedBox(
                                height: size.height / 15,
                              ),
                              SvgPicture.asset(
                                "assets/images/recordicon.svg",
                                cacheColorFilter: true,
                                colorBlendMode: BlendMode.srcIn,
                                color: const Color(0xD9FFFFFF),
                                width: size.width / 4,
                              ),
                              SizedBox(
                                height: size.height / 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const ProfilePic(),
                                    ),
                                  );
                                },
                                child: const Image(
                                  image: AssetImage(
                                    "assets/images/784.png",
                                    // cacheColorFilter: true,

                                    // colorBlendMode: BlendMode.srcIn,
                                    // width: size.width / 8,
                                  ),
                                ),
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
    ;
  }
}
