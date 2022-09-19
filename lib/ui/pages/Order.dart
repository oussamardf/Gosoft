import 'dart:convert';
import 'dart:io';

import 'package:demo5/ui/pages/AllSuppliers.dart';
import 'package:demo5/ui/pages/Order_card.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/classe.dart';
import '../../models/order.dart';
import 'OrderHistory.dart';
class testorder extends StatefulWidget {
  const testorder({Key key}) : super(key: key);

  @override
  State<testorder> createState() => _testorderState();
}

class _testorderState extends State<testorder> {
  Future <List<Order>> nasa;
  Future<List<Order>> getprd() async {
    SharedPreferences pref2 = await SharedPreferences.getInstance();
    var token2 = pref2.getString("token");
    print(token2);
    SharedPreferences pref = await SharedPreferences.getInstance();

    try {
      Response response = await http.get(
        Uri.parse('https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/orders'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          HttpHeaders.authorizationHeader: "Bearer $token2"
        },
      );

      if (response.statusCode == 200) {
        final jsonList =  jsonDecode(response.body);
        if(jsonList is List){
          return jsonList.map((json)=>Order.fromJson(json)).toList();
        }

      } else {
        print(response.statusCode);

        print('not done');
      }
    } catch (e) {
      print(e.toString());
    }
  }


  void initState(){
    super.initState();


    nasa= getprd();

    print('rrr');





  }



  @override
  Widget build(BuildContext context) {

    TextEditingController controller = TextEditingController();
    var size=MediaQuery.of(context).size;
    final double itemHeight= size.height/6.9;
    final double itemWidth= size.width;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title:  Text('Order History =>> '),


        ),

        body: Center(

          child: Container(
            color: Colors.blueGrey,
            child: Column(
              children: [


                Expanded(
                    child:

                    FutureBuilder(
                        future: getprd(),
                        builder: (BuildContext context,AsyncSnapshot<List<Order>> snapshot){
                          if(snapshot.hasData){
                            return
                              ListView(
                                children: snapshot.data.map((nasa) => Ordercard
                                  (nasa:nasa)).toList(),
                              );



                          }else{
                            return Center(child: CircularProgressIndicator(),);
                          }

                        }
                    )
                ),





              ],
            ),
          ),
        )










    );

  }

}
