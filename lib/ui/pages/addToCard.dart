import 'dart:io';


import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';


Future getprd() async {
  var value;
  var storage2 = const FlutterSecureStorage();
  var token2 = await storage2.read(key: "token");
  SharedPreferences pref = await SharedPreferences.getInstance();
  int ee=pref.getInt('id');


  try {


    Response response = await http.post(
        Uri.parse('https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/orders'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token2"
        },
        body: jsonEncode(<String, dynamic>{

          'line_items': [
            {
              'product_id': ee,
              'quantity': 5
            }
          ]
        }
        )
    );


    if (response.statusCode == 200) {
      final body = jsonDecode(response.body.toString());
    SharedPreferences prefs = await SharedPreferences.getInstance();
       value = prefs.getString("name");

      print (value);


      print('done');
    }
    else {
      print(value);
      print('failed');
      print(response.statusCode);
    }
  }
  catch (e) {
    print(e.toString());
  }
}