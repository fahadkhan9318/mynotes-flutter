import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/firebase_options.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController email;
  late final TextEditingController password;

  @override
  void initState() {
    email = TextEditingController();
    password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.done:
              return Column(
                children: [
                  TextField(
                    controller: email,
                    decoration: const InputDecoration(
                      hintText: "Enter your email here",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    enableSuggestions: false,
                  ),
                  TextField(
                    controller: password,
                    decoration: const InputDecoration(
                      hintText: "Enter your password here",
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    autocorrect: false,
                    enableSuggestions: false,
                    obscureText: true,
                  ),
                  TextButton(
                      onPressed: () async {
                        final _email = email.text;
                        final _password = password.text;
                        try {
                          final userCredential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: _email, password: _password);
                          print(userCredential);
                        } on FirebaseAuthException catch (exception) {
                          if (exception.code == "user-not-found") {
                            print("User not found.....");
                          } else if (exception.code == "wrong-password") {
                            print("Wrong Password");
                          }
                        }
                      },
                      child: const Text("Login")),
                ],
              );
            default:
              return const Text("Loading...");
          }
        },
      ),
    );
  }
}
