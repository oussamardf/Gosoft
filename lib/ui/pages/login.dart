import 'dart:convert';
import 'dart:io';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:http/http.dart'as http;
import 'package:shared_preferences/shared_preferences.dart';


import 'home.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final storage = const FlutterSecureStorage();

  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  ProgressHUD(
      child: Builder(
        builder: (context) =>  Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container( decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/GoSoft.jpeg'),
                    alignment: Alignment(0, -1),
                    fit: BoxFit.fitWidth),

              ),),

              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.39),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 35, right: 35),
                        child: Column(
                          children: [
                            TextField(
                              controller: nameController,
                              style: TextStyle(),
                              // obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Email",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextField(
                              controller: passwordController,
                              style: TextStyle(),
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.grey.shade100,
                                  filled: true,
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            TextButton(
                              onPressed: () {
                                //forgot password screen
                              },
                              child: Text(AppLocalizations
                                  .of(context)
                                  ?.pass_oublier ?? 'failed'),
                            ),
                            //login button
                            Container(

                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: ElevatedButton(
                                  child: Text(AppLocalizations
                                      .of(context)
                                      ?.login ?? 'failed'),
                                  onPressed: () {
                                    // onLoginCallback.call(true);
                                    final progress = ProgressHUD.of(context);
                                    progress.show();
                                    Future.delayed(Duration(seconds: 10), () {
                                      progress.dismiss();
                                    });
                                    login();
                                   // EasyLoading.showSuccess('login Successfully!');
                                  },
                                )
                            ),


                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );

  }


  Future<void> login() async {
    try {
      //EasyLoading.showProgress(0.3, status: 'downloading...');

      Response response = await http.post(
          Uri.parse('https://www.qlf1.gosoft.ma//wp-json/jwt-auth/v1/token'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',

          },
          body: jsonEncode(<String, String>{
            'username': nameController.text.toString(),
            'password': passwordController.text.toString()
          }
          )
      );


      if (response.statusCode == 200) {
     //   EasyLoading.showSuccess('login Successfully!');

        final body = jsonDecode(response.body.toString());
        print("login toking" + body['token']);


        //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Token : ${body['accessToken']}")));
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setString("token", body['token']);
        Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => HOME()),
              (route) => false,
        );
      } else {
        // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("invalid")));
        DiagnosticsNode.message('message');

        print('failed');

        print(response.statusCode);
      }
    } catch (e) {
      print(e.toString());
    }
  }


  Future<void> getprd() async {
    var storage2 = const FlutterSecureStorage();
    var token2 = await storage2.read(key: "token");
    try {
      EasyLoading.showProgress(0.3, status: 'downloading...');

      Response response = await http.post(
          Uri.parse('https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/orders'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer $token2"
          },
          body: jsonEncode(<String, dynamic>{

            'line_items': [
              {
                'product_id': 11,
                'quantity': 5
              }
            ]
          }
          )
      );


      if (response.statusCode == 200) {
        final body = jsonDecode(response.body.toString());
        print('done');
      }
      else {
        print('rt');
      }
    }
    catch (e) {
      print(e.toString());
    }
  }
}