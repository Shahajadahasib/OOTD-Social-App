import 'package:flutter/material.dart';
import 'package:ootd/create_account/password.dart';

class CreateAcUsername extends StatefulWidget {
  const CreateAcUsername({super.key});

  @override
  State<CreateAcUsername> createState() => _SignUpState();
}

bool isChecked = false;

class _SignUpState extends State<CreateAcUsername> {
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
                                height: size.height / 3,
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
                                        builder: (context) =>
                                            const CreateAcPassWord()),
                                  );
                                },
                                child: const Image(
                                    image: AssetImage(
                                        "assets/images/entericon.png")),
                              ),
                              SizedBox(
                                height: size.height / 20,
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
                child: Image(
                  width: size.width / 4.5,
                  image: const AssetImage('assets/images/logo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
