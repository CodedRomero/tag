import 'dart:convert';
import 'package:dio/dio.dart';
// import 'package:http/http.dart' as http;
import 'package:encryptor/encryptor.dart';
import 'package:encrypt/encrypt.dart';
import 'package:crypto/crypto.dart';

class LogicServices {
  final baseUrl = 'https://techadgroup.com/app';
  final dio = Dio();
// tamoah@gmail.com
// Mantee
  authenticateUser(authBody) async {
    var response = await dio.post('$baseUrl/api/v1/signin', data: authBody);

    if (response.statusCode == 200) {
//  String base64String = "SGVsbG8gd29ybGQ=";

      // Decode the Base64 string
      List<int> decodedBytes = base64.decode(response.data['key']);
      print(decodedBytes);

      List<int> sessionBytes = base64.decode(response.data['sessiontoken']);
      print(decodedBytes);

      // You can convert the bytes back to a string if necessary
      // String decodedString = utf8.decode(decodedBytes);

      // // print(response.data);
      // //  let keyWard=   CryptoJS.enc.Base64.parse( val.key)
      // final key = Key.fromUtf8(response.data['key']);
      // final iv = IV.fromLength(16);

      // final encrypter = Encrypter(AES(key, mode: AESMode.ecb));
      // final decrypted =
      //     encrypter.decrypt(response.data['sessiontoken'], iv: iv);

      // print(decrypted);
    }
  }

  createNew(body) async {
    var response = await dio.post('$baseUrl/api/v1/add', data: body);
  }

  getDepartments() async {
    var response = await dio.get('$baseUrl/api/v1/department/list');
  }

  editDept() {}

  deleteDept() {}
}
