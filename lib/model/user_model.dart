// ignore_for_file: use_build_context_synchronously

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';

import '../providers/profile_provider.dart';
import '../screen/home_screen.dart';

class UserModel extends ChangeNotifier {
  String? uid;
  String? email;
  String? firstName;
  String? lastName;
  String? image;

  String? errorMessage;

  UserModel({this.uid, this.email, this.firstName, this.lastName, this.image});
  final registerformKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      email: map['email'],
      firstName: map['firstName'],
      lastName: map['secondName'],
      image: map['image'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'firstName': firstName,
      'secondName': lastName,
      'image': image,
    };
  }

  UserModel.formFireStore(Map<String, dynamic> userData)
      : email = userData['email'];

  void signUp(
      {required String email,
      required String password,
      required BuildContext context}) async {
    if (registerformKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .catchError(
          (e) {
            Fluttertoast.showToast(msg: e!.message);
            log(e);
          },
        );

        UserModel user = UserModel(
          firstName: context.read<ProfileProvider>().firstName,
          uid: _auth.currentUser!.uid,
          lastName: context.read<ProfileProvider>().lastName,
          email: email,
          image: '',
        );

        await firebaseFirestore
            .collection("users")
            .doc(_auth.currentUser!.uid)
            .set(
              user.toMap(),
            );

        Navigator.pushAndRemoveUntil(
            (context),
            MaterialPageRoute(
              builder: (context) => HomeScreen(
                uid: _auth.currentUser!.uid,
              ),
            ),
            (route) => false);
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}
