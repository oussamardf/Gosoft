
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/classe.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';


class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _MyApState createState() => _MyApState();
}

class _MyApState extends State<Cart> {






  bool isloading=true;
  var data;
  List<Data> dataa = [] ;
  Map maList = Map();
  var index;
  var index2;

  ShowOverlay(BuildContext context) async {
    var size=MediaQuery.of(context).size;
    final double itemHeight= size.height/6.7;
    final double itemWidth= size.width;


    OverlayState overlayState = Overlay.of(context);
    OverlayEntry overlayEntry=OverlayEntry(

        builder: (context)=>

            MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: Scaffold(

                      appBar: AppBar(
                        backgroundColor: Colors.blue,
                        elevation: 0,
                        centerTitle: true,
                        title: Text(
                          "loading..",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {

                          },
                        ),
                        iconTheme: IconThemeData(color: Colors.white),

                        actions: [
                          IconButton(
                              icon: const Icon(Icons.qr_code_scanner),
                              onPressed: () {
                                setState(() {


                                  /*   progress.show();
                      Future.delayed(Duration(seconds: 4), () {

                        progress.dismiss();
                      });*/


                                });
                              }),
                        ],




                      ),

                      // my card
                      body: Builder(builder: (context) {






                        if (maList.isNotEmpty) {

                          return

                            Stack(
                              children: [
                                Container(),
                                Positioned.fill(
                                    child:
                                    GridView.builder(
                                      itemCount: maList.length,
                                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        childAspectRatio: (itemWidth / itemHeight),


                                      ),
                                      padding: EdgeInsets.all(8),
                                      itemBuilder: (context, key){



                                        index = maList.keys.elementAt(key);

                                        return
                                          Card(

                                            elevation: 15,
                                            child: Container(

                                              height: 110,
                                              padding: const EdgeInsets.all(8.0),
                                              width: 100,
                                              margin: EdgeInsets.all(4.0),
                                              child: Row(
                                                children: [
                                                  Padding(
                                                      padding: const EdgeInsets.only(left: 0,right: 15),
                                                      child: CircleAvatar(
                                                        backgroundImage: NetworkImage(
                                                            (maList[index].data.images.isNotEmpty)
                                                                ? maList[index].data.images[0].src
                                                                : ""),

                                                        radius: 30,
                                                      )
                                                  ),
                                                  SizedBox(width: 16),
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(right: 16.0),
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            maList[index].data.name,
                                                            maxLines: 2,
                                                            overflow: TextOverflow.ellipsis,
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          Spacer(),
                                                          Text(
                                                            "\$${  maList[index].data.price.toString()}",
                                                            style: TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),




                                                  Column(
                                                    children: [

                                                      Row(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Container(
                                                                color: Colors.grey[200],
                                                                child: InkWell(
                                                                  child: Icon(Icons.remove),
                                                                  onTap: (){
                                                                    //action code when clicked

                                                                  },
                                                                ),
                                                              ),
                                                              Container(
                                                                padding: EdgeInsets.all(8.0),
                                                                child:  Text(
                                                                  maList[index].qty.toString(),

                                                                ),
                                                              ),
                                                              Container(
                                                                color: Colors.grey[200],
                                                                child: InkWell(
                                                                  child: Icon(Icons.add),
                                                                  onTap: (){
                                                                    //action code when clicked

                                                                  },
                                                                ),
                                                              ),
                                                            ],
                                                          )

                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Row(
                                                        children: [

                                                          Container(
                                                            child: IconButton(
                                                                icon: const Icon(Icons.delete),
                                                                iconSize: 24.0,
                                                                color: Colors.green,

                                                                onPressed: () {

                                                                }),
                                                          ),


                                                        ],
                                                      ),




                                                    ],
                                                  ),

                                                ],
                                              ),
                                            ),
                                          );


                                      },
                                    )
                                ),
                              ],

                            );
                        } else {
                          return const Center(child: CircularProgressIndicator());
                        }
                      }),

                      floatingActionButton: FloatingActionButton.extended(
                        onPressed: () {

                        },
                        backgroundColor: Colors.blue,
                        label: const Text("confirm"),
                      ),
                    ),
                    builder: EasyLoading.init(),
                  ),

    );
    overlayState?.insert(overlayEntry);
    await Future.delayed(Duration(seconds:5 ));

    overlayEntry.remove();


  }



  @override

  Widget build(BuildContext context) {





   // final progress = ProgressHUD.of(context);
    var size=MediaQuery.of(context).size;
    final double itemHeight= size.height/6.7;
    final double itemWidth= size.width;

    return
      ProgressHUD(
        child: Builder(
        builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      centerTitle: true,
      title: Text(
      "Cart",
      style: TextStyle(color: Colors.white),
      ),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            iconTheme: IconThemeData(color: Colors.white),

            actions: [
              IconButton(
                  icon: const Icon(Icons.qr_code_scanner),
                  onPressed: () {
                    setState(() {
                      scanBarcodeNormal();

                   /*   progress.show();
                      Future.delayed(Duration(seconds: 4), () {

                        progress.dismiss();
                      });*/


                    });
                  }),
            ],
          ),

          // my card
          body: Builder(builder: (context) {



            if (maList.isNotEmpty) {

              return

                Stack(
                    children: [
                    Container(),
            Positioned.fill(
            child:
            GridView.builder(
              itemCount: maList.length,
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                childAspectRatio: (itemWidth / itemHeight),


              ),
            padding: EdgeInsets.all(8),
                  itemBuilder: (context, key){



                 index = maList.keys.elementAt(key);

                    return Dismissible(


                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,
                        onDismissed: (DismissDirection direction) {
                          setState(() async {
                       //     maList.remove(key);
                             index2= maList.keys.elementAt(key);

                            maList.removeWhere((key, value) => key == index2);
                            //maList[index].data.removeAt(index);
                             SharedPreferences pref = await SharedPreferences.getInstance();
                             pref.setInt("id", 0);
                          });
                          // Remove the item from the data source.
                        },
                        child:
                      Card(

                        elevation: 15,
                        child: Container(
                          height: 110,
                          padding: const EdgeInsets.all(8.0),
                          width: 100,
                          margin: EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 0,right: 15),
                                  child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          (maList[index].data.images.isNotEmpty)
                                              ? maList[index].data.images[0].src
                                              : ""),

                                    radius: 30,
                                  )
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        maList[index].data.name,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    Spacer(),
                                      Text(
                                        "\$${  maList[index].data.price.toString()}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),




                              Column(
                                children: [

                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                color: Colors.grey[200],
                                                child: InkWell(
                                                    child: Icon(Icons.remove),
                                                onTap: (){
                                                  //action code when clicked
                                                  _dinCounter(index);
                                                },
                                                ),
                                              ),
                                              Container(
                                                padding: EdgeInsets.all(8.0),
                                                child:  Text(
                                                  maList[index].qty.toString(),

                                                ),
                                              ),
                                              Container(
                                                color: Colors.grey[200],
                                                child: InkWell(
                                                  child: Icon(Icons.add),
                                                  onTap: (){
                                                    //action code when clicked
                                                    _incrementCounter(index);
                                                  },
                                                ),
                                              ),
                                            ],
                                          )

                                        ],
                                      ),
                                  Spacer(),
                                  Row(
                                    children: [

                                      Container(
                                        child: IconButton(
                                            icon: const Icon(Icons.delete),
                                            iconSize: 24.0,
                                            color: Colors.green,

                                            onPressed: () {
                                              setState(()async {
                                                 index2= maList.keys.elementAt(key);

                                                maList.removeWhere((key, value) => key == index2);
                                                 SharedPreferences pref = await SharedPreferences.getInstance();
                                                 await pref.setInt('id', 0);
                                              });
                                            }),
                                      ),


                                    ],
                                  ),




                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    );

                  },
            )
                ),
                    ],

                );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),

          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              setState(() {

                getprd();
              });
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            },
            backgroundColor: Colors.blue,
            label: const Text("confirm"),
          ),
        ),
        builder: EasyLoading.init(),
      ),
        )
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('ORDER SUCCESS'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text("Order successfully done"),
        ],
      ),
      actions: <Widget>[
        FlatButton(
        //  color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }



  Future getprd() async {
    SharedPreferences pref2 = await SharedPreferences.getInstance();
   var token2= await pref2.getString("token");
    SharedPreferences pref = await SharedPreferences.getInstance();
    int ous= await pref.getInt("id");
    print ('the id');
    print(ous);

    try {

      Response response = await http.post(
          Uri.parse('https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/orders'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer $token2"
          },
        body:  jsonEncode(<String, dynamic>

        {

          "line_items": [
            {
              "product_id": ous

            }
          ]

        }
        )
      );


      if (response.statusCode == 201) {
        final body = jsonDecode(response.body.toString());


        print('done');

      }
      else {

        print('not done');

      }
    }
    catch (e) {
      print(e.toString());
    }
  }

  Future scanBarcodeNormal() async {

    SharedPreferences pref = await SharedPreferences.getInstance();
   var token= pref.getString("token");
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.

    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);


      // EasyLoading.show(status: 'loading...');

      // isloading=true;

      ShowOverlay(context);
      final response = await http.get(
        Uri.parse(
            'https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/products?per_page=100&sku=$barcodeScanRes'),
        headers: <String, String>{
          HttpHeaders.authorizationHeader: "Bearer $token"
        },
      );




      if (response.statusCode == 200) {

        setState(() {
         // ShowOverlay(context);
        });





        final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

        data = parsed.map<Data>((json) => Data.fromJson(json)).toList();
        int dd= data[0].id;


        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setInt("id", dd);
        print('the dd');
        print (dd);



        if (data.length > 0) {
          if (maList.containsKey(barcodeScanRes)) {
            maList[barcodeScanRes].qty++;
          } else {
            maList[barcodeScanRes] = shopinCartItem(data: data[0], qty: 1);
          }
        }
      } else {

        throw Exception('Failed to load album');
      }
    } on PlatformException {
      EasyLoading.showError('Failed with Error');
      barcodeScanRes = 'Failed to get platform version.';
    }

    setState(() {

    });
     EasyLoading.dismiss();
  }







  void _incrementCounter(dynamic index) {
    setState(() {
      if (maList[index].stockQuantity > maList[index].qty) {
        maList[index].qty++;
      }

    });
  }

  void _dinCounter(dynamic index) {
    setState(() {
      if (maList[index].qty > 1) {
        maList[index].qty--;
      } else {
       // var index2= maList.keys.elementAt(key);

        maList.removeWhere((key, value) => key == index2);
      }
    });
  }
}

class shopinCartItem {
  shopinCartItem({  this.data,   this.qty});

  Data data;
  int qty;
}
