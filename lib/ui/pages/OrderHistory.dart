import 'dart:convert';
import 'dart:io';

import 'package:demo5/ui/pages/AllSuppliers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/classe.dart';
import '../../models/order.dart';

class OrderHistory extends StatefulWidget {
  final Order nasa;
  const OrderHistory({Key key, this.nasa}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  var data;

  List<Data> dataa = [];
  Map maList = {};
  var index;
  var index2;
  var map;

  void initState() {
    super.initState();
    setState(() {
      getprd();
    });
  }


  Future getprd() async {
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
        setState(() {
          data = jsonDecode(response.body.toString());
        });
      } else {
        print(response.statusCode);

        print('not done');
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = size.height / 6.7;
    final double itemWidth = size.width;
    debugShowCheckedModeBanner:
    false;
    theme:
    ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
        appBar: AppBar(title: const Text('Order History')),
        body:  Center(
            child: Column(
              children: [
                Expanded(
                    child: GridView.builder(
                  itemCount: (widget.nasa.lineItems.length == null) ? 0 : widget.nasa.lineItems.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: (itemWidth / itemHeight),
                  ),
                  padding: EdgeInsets.all(8),
                  itemBuilder: (context, key) {


                    if (widget.nasa != null) {
                      return Card(
                        elevation: 15,
                        child: Container(
                          height: 110,
                          padding: const EdgeInsets.all(8.0),
                          width: 100,
                          margin: EdgeInsets.all(4.0),
                          child: Row(
                            children: [

                              SizedBox(width: 16),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        widget.nasa.lineItems[key].name??'',
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      Text(
                                        'Price: ${widget.nasa.lineItems[key].total} '?? '',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                    else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                )),
              ],
            ),
          ),
        );
  }
}

class shopinCartItem {
  shopinCartItem({this.data, this.qty});

  Data data;
  int qty;
}
