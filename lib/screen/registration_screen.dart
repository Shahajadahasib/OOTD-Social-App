// import 'package:flutter/material.dart';
// import 'package:ootd/model/user_model.dart';
// import 'package:provider/provider.dart';

// class RegistrationScreen extends StatefulWidget {
//   const RegistrationScreen({Key? key}) : super(key: key);

//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<UserModel>(
//       create: (context) => UserModel(),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back, color: Colors.red),
//             onPressed: () {
//               // passing this to our root
//               Navigator.of(context).pop();
//             },
//           ),
//         ),
//         body: Consumer<UserModel>(builder: (context, model, child) {
//           return Center(
//             child: SingleChildScrollView(
//               child: Container(
//                 color: Colors.white,
//                 child: Padding(
//                   padding: const EdgeInsets.all(36.0),
//                   child: Form(
//                     key: model.registerformKey,
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         SizedBox(
//                             height: 180,
//                             child: Image.asset(
//                               "assets/logo.png",
//                               fit: BoxFit.contain,
//                             )),
//                         TextFormField(
//                           autofocus: false,
//                           controller: model.firstNameEditingController,
//                           keyboardType: TextInputType.name,
//                           validator: (value) {
//                             RegExp regex = new RegExp(r'^.{3,}$');
//                             if (value!.isEmpty) {
//                               return ("First Name cannot be Empty");
//                             }
//                             if (!regex.hasMatch(value)) {
//                               return ("Enter Valid name(Min. 3 Character)");
//                             }
//                             return null;
//                           },
//                           onSaved: (value) {
//                             model.firstNameEditingController.text = value!;
//                           },
//                           textInputAction: TextInputAction.next,
//                           decoration: InputDecoration(
//                             prefixIcon: const Icon(Icons.account_circle),
//                             contentPadding:
//                                 const EdgeInsets.fromLTRB(20, 15, 20, 15),
//                             hintText: "First Name",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 45),
//                         TextFormField(
//                           autofocus: false,
//                           controller: model.lastNameEditingController,
//                           keyboardType: TextInputType.name,
//                           validator: (value) {
//                             if (value!.isEmpty) {
//                               return ("Second Name cannot be Empty");
//                             }
//                             return null;
//                           },
//                           onSaved: (value) {
//                             model.lastNameEditingController.text = value!;
//                           },
//                           textInputAction: TextInputAction.next,
//                           decoration: InputDecoration(
//                             prefixIcon: const Icon(Icons.account_circle),
//                             contentPadding:
//                                 const EdgeInsets.fromLTRB(20, 15, 20, 15),
//                             hintText: "Second Name",
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         const SizedBox(height: 20),
//                         TextFormField(
//                             autofocus: false,
//                             controller: model.emailEditingController,
//                             keyboardType: TextInputType.emailAddress,
//                             validator: (value) {
//                               if (value!.isEmpty) {
//                                 return ("Please Enter Your Email");
//                               }
//                               // reg expression for email validation
//                               if (!RegExp(
//                                       "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
//                                   .hasMatch(value)) {
//                                 return ("Please Enter a valid email");
//                               }
//                               return null;
//                             },
//                             onSaved: (value) {
//                               model.emailEditingController.text = value!;
//                             },
//                             textInputAction: TextInputAction.next,
//                             decoration: InputDecoration(
//                               prefixIcon: const Icon(Icons.mail),
//                               contentPadding:
//                                   const EdgeInsets.fromLTRB(20, 15, 20, 15),
//                               hintText: "Email",
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             )),
//                         const SizedBox(height: 20),
//                         TextFormField(
//                             autofocus: false,
//                             controller: model.passwordEditingController,
//                             obscureText: true,
//                             validator: (value) {
//                               RegExp regex = new RegExp(r'^.{6,}$');
//                               if (value!.isEmpty) {
//                                 return ("Password is required for login");
//                               }
//                               if (!regex.hasMatch(value)) {
//                                 return ("Enter Valid Password(Min. 6 Character)");
//                               }
//                             },
//                             onSaved: (value) {
//                               model.firstNameEditingController.text = value!;
//                             },
//                             textInputAction: TextInputAction.next,
//                             decoration: InputDecoration(
//                               prefixIcon: const Icon(Icons.vpn_key),
//                               contentPadding:
//                                   const EdgeInsets.fromLTRB(20, 15, 20, 15),
//                               hintText: "Password",
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             )),
//                         const SizedBox(height: 20),
//                         TextFormField(
//                             autofocus: false,
//                             controller: model.repasswordEditingController,
//                             obscureText: true,
//                             validator: (value) {
//                               if (model.repasswordEditingController.text !=
//                                   model.passwordEditingController.text) {
//                                 return "Password don't match";
//                               }
//                               return null;
//                             },
//                             onSaved: (value) {
//                               model.repasswordEditingController.text = value!;
//                             },
//                             textInputAction: TextInputAction.done,
//                             decoration: InputDecoration(
//                               prefixIcon: const Icon(Icons.vpn_key),
//                               contentPadding:
//                                   const EdgeInsets.fromLTRB(20, 15, 20, 15),
//                               hintText: "Confirm Password",
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             )),
//                         const SizedBox(height: 20),
//                         Material(
//                           elevation: 5,
//                           borderRadius: BorderRadius.circular(30),
//                           color: Colors.redAccent,
//                           child: MaterialButton(
//                               padding:
//                                   const EdgeInsets.fromLTRB(20, 15, 20, 15),
//                               minWidth: MediaQuery.of(context).size.width,
//                               onPressed: () {
//                                 model.signUp(
//                                   email: model.emailEditingController.text,
//                                   password:
//                                       model.passwordEditingController.text,
//                                   context: context,
//                                 );
//                               },
//                               child: const Text(
//                                 "SignUp",
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(
//                                     fontSize: 20,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold),
//                               )),
//                         ),
//                         const SizedBox(height: 15),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }
