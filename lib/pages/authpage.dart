import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quickalert/quickalert.dart';
import 'package:tag/services/logic.dart';

class Authpage extends StatefulWidget {
  const Authpage({super.key});

  @override
  State<Authpage> createState() => _AuthpageState();
}

class _AuthpageState extends State<Authpage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  signInFunction(ctx) {
    if (username.text.isNotEmpty && password.text.isNotEmpty) {
      // final authBody = {'username': "Mantee", 'password': 'tamoah@gmail.com'};
      final authBody = {'username': username.text, 'password': password.text};

      FormData formData = new FormData.fromMap(authBody);
      LogicServices().authenticateUser(authBody);
    } else {
      QuickAlert.show(
        context: ctx,
        type: QuickAlertType.error,
        title: 'Oops...',
        text: 'Username and password are required',
        // text: 'Sorry, something went wrong',
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top Header with Icon

                // Container(
                //   height: 200,
                //   decoration: const BoxDecoration(
                //     color: Colors.blueAccent,
                //     borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(50),
                //       bottomRight: Radius.circular(50),
                //     ),
                //   ),
                //   child: const Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Icon(
                //         Icons.rocket_launch_rounded,
                //         size: 80,
                //         color: Colors.white,
                //       ),
                //       SizedBox(height: 10),
                //       Text(
                //         "Spacer",
                //         style: TextStyle(
                //           fontSize: 30,
                //           fontWeight: FontWeight.bold,
                //           color: Colors.white,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                const SizedBox(height: 30),

                // Create your account text
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),

                // Email TextField
                TextField(
                  controller: username,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 20),

                // Password TextField
                TextField(
                  obscureText: true,
                  controller: password,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 20),

                // Sign Up Button
                ElevatedButton(
                  onPressed: () {
                    signInFunction(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 15),
                  ),
                  child: const Text(
                    "Sign In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
