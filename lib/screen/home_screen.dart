import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ootd/providers/profile_provider.dart';
import 'package:provider/provider.dart';

import '../model/user_model.dart';
import 'login_screen.dart';

class HomeScreen extends StatefulWidget {
  final String uid;
  const HomeScreen({Key? key, required this.uid}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // User? user = FirebaseAuth.instance.currentUser;
  // UserModel loggedInUser = UserModel();

  // @override
  // void initState() {
  //   super.initState();

  //   setState(() {});
  // }

  // @override
  // void didChangeDependencies() {
  //   Provider.of<ProfileProvider>(context).getuserdata();
  //   // ProfileProvider().getuserdata();
  //   super.didChangeDependencies();
  // }
  late ProfileProvider userProvider;
  @override
  void initState() {
    ProfileProvider userProvider = Provider.of(context, listen: false);
    userProvider.fatchUserData();
    log(userProvider.userModel.email.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // var profile = context.watch<ProfileProvider>().movies;
    // final profileprovider = Provider.of<ProfileProvider>(context);
    // var profile = profileprovider;
    // final profile = Provider.of<UserModel>(context).email;
    userProvider = Provider.of(
      context,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: 150,
              //   child:
              //       Image.network("${loggedInUser.image}", fit: BoxFit.contain),
              // ),
              // ListView(
              //   children: [
              //     Container(
              //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8),
              //           border: Border.all(width: 0.5, color: Colors.grey)),
              //       child: ListTile(
              //         title: Text(profile.em),
              //       ),
              //     ),
              //   ],
              // ),
              Text(
                userProvider.userModel.email.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                userProvider.userModel.firstName.toString(),
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),

              // Text("${loggedInUser.email}",
              //     style: TextStyle(
              //       color: Colors.black54,
              //       fontWeight: FontWeight.w500,
              //     )),
              // SizedBox(
              //   height: 15,
              // ),
              Consumer<ProfileProvider>(builder: (context, value, child) {
                return Text(userProvider.userModel.secondName.toString());
              }),
              ActionChip(
                  label: const Text("Logout"),
                  onPressed: () {
                    logout(context);
                  }),
              // _buildData(movies: profile)
            ],
          ),
        ),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  _buildData({required List<UserModel> movies}) {
    return Expanded(
      child: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (_, index) {
          final currentmovie = movies[index];
          return Card(
            elevation: 4,
            key: ValueKey(currentmovie.uid),
            color: Colors.blue,
            child: ListTile(
              title: Text(currentmovie.uid!),
              //   // currentmovie.title,
              //   style: const TextStyle(
              //     color: Colors.white,
              //   ),
              // ),
              subtitle: const Text(""
                  // currentmovie.duration ?? " No information ",
                  // style: const TextStyle(
                  //   color: Colors.white,
                  // ),
                  ),
              // trailing: IconButton(
              //   icon: Icon(
              //     Icons.favorite,
              //     color:
              //         myList.contains(currentmovie) ? Colors.red : Colors.white,
              //     size: 30,
              //   ),
              //   onPressed: () {
              //     if (!myList.contains(currentmovie)) {
              //       log('1');
              //       context.read<MovieProvider>().addToList(currentmovie);
              //     } else {
              //       log('2');
              //       context.read<MovieProvider>().removeToList(currentmovie);
              //     }
              //   },
              // ),
            ),
          );
        },
      ),
    );
  }
}
