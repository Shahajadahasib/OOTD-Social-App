import 'package:flutter/material.dart';
import 'package:ootd/create_account/username.dart';

class CreateAcEmail extends StatefulWidget {
  const CreateAcEmail({super.key});

  @override
  State<CreateAcEmail> createState() => _HomePageState();
}

class _HomePageState extends State<CreateAcEmail> {
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
                  decoration: BoxDecoration(
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
                              Text(
                                "Hey there !",
                                style: TextStyle(
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontSize: 21,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                "Let's get you set",
                                style: TextStyle(
                                  color: Color(
                                    0xffFFFFFF,
                                  ),
                                  fontSize: 30,
                                  // height: 1,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: size.height / 8,
                              ),
                              TextField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 2, color: Color(0xff8E8B8B))),
                                  hintText: "Email",
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
                                          const CreateAcUsername(),
                                    ),
                                  );
                                },
                                child: const Image(
                                    image: AssetImage(
                                        "assets/images/entericon.png")),
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
                child: Image(
                  width: size.width / 4.5,
                  image: AssetImage('assets/images/logo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
