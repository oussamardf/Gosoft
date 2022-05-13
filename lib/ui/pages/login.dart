import 'dart:convert';

import 'package:demo5/ui/pages/BarCode.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';
import 'home.dart';
  class Login2 extends StatefulWidget{
    Login2({Key? key,  }) : super(key: key);

    @override
    State<Login2> createState() => _Login2State();
  }

  class _Login2State extends State<Login2> {
    //final Function(bool loggedIn) onLoginCallback;
    final storage =  const FlutterSecureStorage();

    TextEditingController nameController = TextEditingController();

    TextEditingController passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {


      return Scaffold(
        body: Padding(

            padding: const EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(

                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.all(14),
                    child:



                    const Text(
                      'GO SOFT',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )

                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child:Text(AppLocalizations.of(context)?.hello ?? 'faild',
                    style: const TextStyle(fontSize: 20),

                  ),

                  //  style: const TextStyle(fontSize: 20),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(

                    controller: nameController,
                    decoration:  InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: (AppLocalizations.of(context)?.name ?? 'faild'),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(


                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(

                      border: const OutlineInputBorder(),
                      labelText: (AppLocalizations.of(context)?.pass ?? 'failed'),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child:Text(AppLocalizations.of(context)?.pass_oublier ?? 'failed'),
                ),
                //login button
                Container(

                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child:Text(AppLocalizations.of(context)?.login ?? 'failed'),
                      onPressed: () {


                       // onLoginCallback.call(true);

                        login();



                      },
                    )
                ),
                Row(
                  children: <Widget>[
                    Text(AppLocalizations.of(context)?.account ?? 'faild'),
                    ElevatedButton(
                      child: Text(AppLocalizations.of(context)?.connect ?? 'faild'),
                      onPressed: () {},
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )
        ),
      );

    }

    Future<void> login() async {

        try{
          EasyLoading.showProgress(0.3, status: 'downloading...');

        Response response = await http.post(
            Uri.parse('https://www.qlf1.gosoft.ma//wp-json/jwt-auth/v1/token'),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',

            },
            body:jsonEncode(<String, String> {
              'username' : nameController.text.toString(),
              'password' : passwordController.text.toString()
            }
            )
        );



        if(response.statusCode == 200){

          EasyLoading.showSuccess('login Successfully!');

          final  body = jsonDecode(response.body.toString());
          print("login toking"+ body['token']);
            await storage.write(key: 'token', value: body['token']);

          //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Token : ${body['accessToken']}")));
          SharedPreferences pref = await SharedPreferences.getInstance();
          await pref.setString("token",  body['token'] ) ;
          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder:(context)=>HOME()),
                (route)=>false,
          );

        }else {
          // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("invalid")));
          DiagnosticsNode.message('message');

          print('failed');

          print(response.statusCode);
        }
      }catch(e){
        print(e.toString());
      }
    }

  }



































