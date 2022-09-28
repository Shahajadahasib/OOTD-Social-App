import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'varification.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Message> {
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
                                height: size.height / 6,
                              ),
                              const Text(
                                "We’ve sent an email to useremail@gmail.com so you can reset your password. Would you like us to resend that email?",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
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
  }
}
