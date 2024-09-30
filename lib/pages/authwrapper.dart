import 'package:flutter/material.dart';
import 'package:tag/pages/authpage.dart';
import 'package:tag/pages/homepage.dart';

import '../services/localstorage_services.dart';

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({super.key});

  @override
  State<AuthWrapper> createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: LocalStorageServices()
          .getBooleanValue(LocalStorageServices.userLoggedIn),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: const CircularProgressIndicator.adaptive(),
          );
        }
        if (snapshot.data == true) {
          return const Homepage();
        } else {
          return const Authpage();
        }
      },
    );
  }
}
