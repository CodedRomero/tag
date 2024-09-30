import 'dart:convert';
import 'package:http/http.dart' as http;

class LogicServices {
  final baseUrl = 'https://techadgroup.com/app';

  authenticateUser(authBody) async {
    var url = Uri.parse('https://techadgroup.com/app/api/v1/signin');

    var response = await http.post(url, body: authBody);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }

  createNew() {}

  getDepartments() {}

  editDept() {}

  deleteDept() {}
}
