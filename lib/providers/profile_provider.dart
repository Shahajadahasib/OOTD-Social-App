import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:ootd/model/user_model.dart';

class ProfileProvider with ChangeNotifier {
  List<UserModel> user = [];
  UserModel userModel = UserModel();
  String _firstName = '';
  String _lastName = '';
  String _email = '';
  String _password = '';
  String _repassword = '';

  String get firstName => _firstName;
  String get lastName => _lastName;
  String get email => _email;
  String get password => _password;
  String get repassword => _repassword;

  set firstName(String value) {
    _firstName = value;
    log(_firstName);
    notifyListeners();
  }

  set lastName(String value) {
    _lastName = value;
    log(_lastName);
    notifyListeners();
  }

  set email(String value) {
    _email = value;
    log(_email);
    notifyListeners();
  }

  set password(String value) {
    _password = value;
    log(_password);
    notifyListeners();
  }

  set repassword(String value) {
    _repassword = value;
    log(_repassword);
    notifyListeners();
  }

  fatchUserData() async {
    List<UserModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("users").get();
    value.docs.forEach(
      (element) {
        userModel = UserModel(
          uid: element.get('uid'),
          email: element.get('email'),
          firstName: element.get('firstName'),
          lastName: element.get('secondName'),
        );
        newList.add(userModel);
      },
    );
    user = newList;
    log(user.toString());
    notifyListeners();
  }
}
