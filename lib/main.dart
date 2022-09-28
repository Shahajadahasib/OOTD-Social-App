import 'package:flutter/material.dart';
import 'package:ootd/create_post/bio_record.dart';
import 'package:ootd/create_post/choose_video.dart';
import 'package:ootd/create_post/email_poup.dart';
import 'package:ootd/create_post/forgate_pas_msg.dart';
import 'package:ootd/create_post/forgate_password.dart';
import 'package:ootd/create_post/log_password.dart';
import 'package:ootd/create_post/profilepic.dart';
import 'package:ootd/create_post/username.dart';
import 'package:ootd/create_post/varification.dart';
import 'package:ootd/users/spotlight.dart';

import 'create_post/user_with_email.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpotLight(),
    );
  }
}
