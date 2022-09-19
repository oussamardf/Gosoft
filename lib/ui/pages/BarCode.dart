
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/classe.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'addToCard.dart';


class BareCode extends StatefulWidget {
  const BareCode({Key key}) : super(key: key);

  @override
  _MyApState createState() => _MyApState();
}

class _MyApState extends State<BareCode> {






  bool isloading=true;
  var data;
  List<Data> dataa = [];
  Map maList = {};
  var index;

  /*ShowOverlay(BuildContext context) async {

    OverlayState? overlayState = Overlay.of(context);
    OverlayEntry overlayEntry=OverlayEntry(

        builder: (context)=> MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: const Text('loading...'),

              actions: [
                IconButton(
                    icon: const Icon(Icons.qr_code_scanner),
                    onPressed: () {
                      null;


                    }),
              ],
            ),

            // my card
            body: Builder(builder: (context) {



              if (maList.isNotEmpty) {

                return ListView.builder(
                  itemCount: maList.length,
                  itemBuilder: (_, key) {
                    String index = maList.keys.elementAt(key);
                    return
                      Card(
                        child: Container(
                          height: 100,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Center(
                                child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            (maList[index].data.images.isNotEmpty)
                                                ? maList[index].data.images[0].src
                                                : ""))),
                              ),
                              const SizedBox(
                                width: 40,
                              ),
                              Center(
                                child: Container(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    children: [
                                      Column(children: [
                                        Row(children: [
                                          Column(children: [
                                            const SizedBox(
                                              height: 8,
                                            ),
                                            Text(maList[index].data.name),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Text(
                                              maList[index].data.name,
                                              style: const TextStyle(fontSize: 20),
                                            ),
                                          ])
                                        ]),
                                      ]),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      Column(children: [
                                        Row(children: [
                                          IconButton(
                                              icon: const Icon(Icons.delete),
                                              iconSize: 24.0,
                                              color: Colors.red,
                                              onPressed: () {
                                               null;
                                              }),
                                        ]),
                                        Container(
                                          width: 110,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Colors.black12,
                                            ),
                                            borderRadius: BorderRadius.circular(20.0),
                                          ),
                                          child: Row(children: [
                                            Row(children: [
                                              IconButton(
                                                icon: const Icon(Icons.remove),
                                                iconSize: 15.0,
                                                color: Colors.indigo,
                                                onPressed: () {
                                                 null;
                                                },
                                              ),
                                              Text(
                                                maList[index].qty.toString(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline6,
                                              ),
                                              IconButton(
                                                icon: const Icon(Icons.add),
                                                iconSize: 15.0,
                                                color: Colors.indigo,
                                                onPressed: () {
                                                  null;
                                                },
                                              ),
                                            ])
                                          ]),
                                        )
                                      ])
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        elevation: 10,
                        margin: const EdgeInsets.all(10),
                      );

                  },
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),

            floatingActionButton: FloatingActionButton.extended(
              onPressed: () {
                null;

              },
              label: const Text("confirm"),
            ),
          ),
          builder: EasyLoading.init(),
        )
    );
    overlayState?.insert(overlayEntry);
    await Future.delayed(Duration(seconds:2 ));

    overlayEntry.remove();


  }*/




  @override

  Widget build(BuildContext context) {






    var size=MediaQuery.of(context).size;
    final double itemHeight= size.height/6.7;
    final double itemWidth= size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
           appBar: AppBar(
            title: const Text('Search'),
             leading: IconButton(
              icon: const Icon(Icons.arrow_back),
               onPressed: () {},
        ),
        actions: [
            IconButton(
              icon: const Icon(Icons.qr_code_scanner),
              onPressed: () {
                setState(() {

                  scanBarcodeNormal();

                });
              }),
        ],
      ),

      // my card
        body: Builder(builder: (context) {



        if (maList.isNotEmpty) {

          return

            GridView.builder(
                itemCount: maList.length,
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: (itemWidth / itemHeight),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,

                ),
                itemBuilder: (_, key){


               index = maList.keys.elementAt(key);
              return Dismissible(
                background: Container(
                  alignment: AlignmentDirectional.centerEnd,
                  color: Colors.red,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ),
                key: Key(index),
                onDismissed: (direction) {
                  setState(() {

                    maList.removeWhere((key, value) => key == Key);
                  });
                  // Remove the item from the data source.
                },
                child:
                Card(
                  child: Container(
                    height: 100,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Center(
                          child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      (maList[index].data.images.isNotEmpty)
                                          ? maList[index].data.images[0].src
                                          : ""))),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Center(
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Column(children: [
                                  Row(children: [
                                    Column(children: [
                                      const SizedBox(
                                        height: 8,
                                      ),


                                      Text(maList[index].data.name),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        maList[index].data.id.toString(),
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    ])
                                  ]),
                                ]),
                                const SizedBox(
                                  width: 50,
                                ),





                                Column(children: [
                                  Row(
                                      children: [
                                    IconButton(
                                        icon: const Icon(Icons.delete),
                                        iconSize: 24.0,
                                        color: Colors.red,
                                        onPressed: () {
                                          setState(() {
                                            maList.removeWhere(
                                                (key, value) => key == index);
                                          });
                                        }),
                                  ]),
                                  Container(
                                    width: 110,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black12,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child:
                                    Row(children: [
                                      Row(children: [
                                        IconButton(
                                          icon: const Icon(Icons.remove),
                                          iconSize: 15.0,
                                          color: Colors.indigo,
                                          onPressed: () {
                                            _dinCounter(index);
                                          },
                                        ),
                                        Text(
                                          maList[index].qty.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                        IconButton(
                                          icon: const Icon(Icons.add),
                                          iconSize: 15.0,
                                          color: Colors.indigo,
                                          onPressed: () {
                                            _incrementCounter(index);
                                          },
                                        ),
                                      ])
                                    ]),
                                  )
                                ])
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  elevation: 10,
                  margin: const EdgeInsets.all(10),
                ),
              );
            },
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
        label: const Text("confirm"),
      ),
    ),
      builder: EasyLoading.init(),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('ORDER SUCCESS'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text("Order successfully done 2"),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Close'),
        ),
      ],
    );
  }

  Widget progress(bool isloading){
    if(isloading==true) {
      return Scaffold(
        body:

        ModalProgressHUD(
          inAsyncCall: isloading,
          child: build(context),
          opacity: 2.5,
          progressIndicator: const CircularProgressIndicator(),
        ),

      );
    }
    else {
      return null;
    }


  }

  Future scanBarcodeNormal() async {

    var storage = const FlutterSecureStorage();
    var token = await storage.read(key: "token");
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
           '#a3ff9d', '', false, ScanMode.BARCODE);

   //   ShowOverlay(context);
    //  EasyLoading.show(status: 'loading...');

       // isloading=true;


      final response = await http.get(
        Uri.parse(
            'https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/products?per_page=100&sku=$barcodeScanRes'),
        headers: <String, String>{
          HttpHeaders.authorizationHeader: "Bearer $token"
        },
      );

      progress(isloading);


      if (response.statusCode == 200) {

        setState(() {
          isloading=false;
        });





      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

        data = parsed.map<Data>((json) => Data.fromJson(json)).toList();
        int dd= data[0].id;


        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setInt("id", dd);



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
   // EasyLoading.dismiss();
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

      maList.removeWhere((key, value) => key == index);
    }
  });
}
}

class shopinCartItem {
  shopinCartItem({  this.data,   this.qty});

  Data data;
  int qty;
}
