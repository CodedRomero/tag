import 'package:flutter/material.dart';

class NewDept extends StatefulWidget {
  const NewDept({super.key});

  @override
  State<NewDept> createState() => _NewDeptState();
}

class _NewDeptState extends State<NewDept> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Department Details'),
      ),
    );
  }
}
