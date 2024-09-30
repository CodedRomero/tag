import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List dept = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        automaticallyImplyLeading: false,
        title: const Text('TAG Departments'),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/new');
              },
              child: const Text('New')),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Logout')),
        ],
      ),
      body: ListView.builder(
        itemCount: dept.length,
        itemBuilder: (context, index) {
          return const Text('data');
        },
      ),
    );
  }
}
