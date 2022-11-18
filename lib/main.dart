import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:ootd/providers/profile_provider.dart';
import 'package:ootd/screen/login_screen.dart';
import 'package:provider/provider.dart';

import 'create_account/email.dart';
import 'create_post/email_poup.dart';
import 'create_post/user_with_email.dart';
import 'screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _auth = '';
  @override
  void initState() {
    checkUser();
    super.initState();
  }

  void checkUser() async {
    final auth = FirebaseAuth.instance.currentUser!.uid;
    setState(
      () {
        _auth = auth;
        // log(_auth);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(
          create: (context) => ProfileProvider(),
        ),
        //  ChangeNotifierProvider(create: (context) => ProfileProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            // CreateAcEmail(),

            _auth.isEmpty
                ? const CreateAcEmail()
                : HomeScreen(
                    uid: _auth,
                  ),
      ),
    );
  }
}
