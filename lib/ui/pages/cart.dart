
// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/classe.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';

import 'BarCode.dart';
import 'Barcode2.dart';
import 'home.dart';






var data;


List<Data> dataa = [] ;
Map maList = {};
var index;
var index2;
var map;
List<Map<String, dynamic>> persons =  [];
List<Map<String, dynamic>> pricee =  [];
class Cart extends StatefulWidget {
  const Cart({Key key}) : super(key: key);

  @override
  _MyApState createState() => _MyApState();
}

class _MyApState extends State<Cart> {

  int r;
double tot;
double total;
String barcodeScanRes;
void initState(){
  super.initState();
  setState((){
total;
   // scanBarcodeNormal();
  });

}


  @override

  Widget build(BuildContext context) {








    var size=MediaQuery.of(context).size;
    final double itemHeight= size.height/6.7;
    final double itemWidth= size.width;

    return
       Builder(
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
                maList.remove;

                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                    HOME()), (Route<dynamic> route) => false);
              },
            ),
            iconTheme: IconThemeData(color: Colors.white),

            actions: [
              IconButton(
                  icon: const Icon(Icons.qr_code_scanner),
                  onPressed: () {



                    setState(() {

                 //   scanBarcodeNormal();



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

                      Positioned.fill(
                        left: 2,

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


                   total= double.parse(maList[index].data.price??'' ) *(maList[index].qty);
                //   print (total);

                    return Dismissible(


                        key: UniqueKey(),
                        direction: DismissDirection.endToStart,

                        onDismissed: (DismissDirection direction) async {



                          setState(() {

                             index2= maList.keys.elementAt(key);
                           r=maList[index2].data.id;

                            maList.removeWhere((key, value) => key == index2);
                             showDialog(
                               context: context,
                               builder: (BuildContext context) => removeDialog(context),
                             );
                             persons.removeWhere((element) => element["product_id"] == r);

                             print ('my persons');
                             print(persons);
                             print(index);






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
                                      Text("${total}",
                                     //  "\$${ double.parse(maList[index].data.price??'' ) *(maList[index].qty) }",
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
                                                      print(key);
                                                  //action code when clicked
                                                  _dinCounter(key);
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
                                                    index2= maList.keys.elementAt(key);

                                                    setState((){

                                                    });

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
                                              setState(() {

                                                 index2= maList.keys.elementAt(key);

                                                 int r=maList[index2].data.id;

                                                maList.removeWhere((key, value) => key == index2);
                                                 persons.removeWhere((element) => element["product_id"] == r);
                                                 print('my person');
                                                 print(persons);

                                                /* SharedPreferences pref = await SharedPreferences.getInstance();
                                                 await pref.setInt('id', 0);*/
                                              });
                                              showDialog(
                                                context: context,
                                                builder: (BuildContext context) => removeDialog(context),
                                              );

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


                      Positioned.fill(
                          top: 600,

                          child:
                          Column(
                            children: [
                              Divider(
                                  color: Colors.black,
                                height: 20,
                                thickness: 3,
                              ),
                              Row(
                                children: [
                                  Container(
                                    color: Colors.red,
                                    child:
                                           Text('Totale:',
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),

                                  ),Spacer(),
                                  Container(
                                    child: Text(  "${qty}",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  )
                                ],
                              ),


                            ],
                          )

                      ),

                    ],

                );
            } else {
              return Center(child: CircularProgressIndicator(),);
            }
          },


          ),


          floatingActionButton: FloatingActionButton.extended(

            onPressed: () {
              if (maList.isNotEmpty) {
                setState(() {



                  Checkout();
                });

                showDialog(
                  context: context,
                  builder: (BuildContext context) => _buildPopupDialog(context),
                );
              }
              else
                {
                  return null;
                }


            },
            backgroundColor: Colors.blue,
            label: const Text("confirm"),
          ),
        ),

      ),
        );

  }

  Widget removeDialog(BuildContext context){
    return AlertDialog(
      title: Text("Delete"),
      titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),
      backgroundColor: Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      content: Text("Order deleted successfully"),
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



  Future Checkout() async {
    SharedPreferences pref2 = await SharedPreferences.getInstance();
   var token2= pref2.getString("token");
    SharedPreferences pref = await SharedPreferences.getInstance();




    try {

      Response response = await http.post(
          Uri.parse('https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/orders'),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            HttpHeaders.authorizationHeader: "Bearer $token2"
          },

        body:  jsonEncode(<String, dynamic>

        {

          "line_items":
            persons,



        }
        )

      );


      if (response.statusCode == 201) {
        final body = jsonDecode(response.body.toString());

print(persons);
        print('done');
      setState((){
        maList.clear();
        persons.clear();

      });
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
  var size=MediaQuery.of(context).size;
  final double itemHeight= size.height/6.7;
  final double itemWidth= size.width;

  SharedPreferences pref = await SharedPreferences.getInstance();
  var token= pref.getString("token");

barcodeScanRes=pref.getString('barcode');
print('this is mun codddde');
print(barcodeScanRes);


    final response = await http.get(
      Uri.parse(
          'https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/products?per_page=100&sku=$barcodeScanRes'),
      headers: <String, String>{
        HttpHeaders.authorizationHeader: "Bearer $token"
      },
    );





    if (response.statusCode == 200) {

print('***********succed***********');


      // ShowOverlay(context);





      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      data = parsed.map<Data>((json) => Data.fromJson(json)).toList();
      print(data.toString());









      if (data.length > 0) {
        if (maList.containsKey(barcodeScanRes)) {
          maList[barcodeScanRes].qty++;
        } else {
          maList[barcodeScanRes] = shopinCartItem(data: data[0], qty: 1);
        }
      }
    }
    else {

      print('Failed to load data');
      print(barcodeScanRes);
    }







}







  void _incrementCounter(dynamic index) {
    setState(() {
      if (maList[index].stockQuantity > maList[index].qty) {
        maList[index].qty++;
      }

    });
  }

  void _dinCounter(dynamic key) {
    var index2= maList.keys.elementAt(key);
    int r=maList[index2].data.id;
    setState(() {
      if (maList[index2].qty >1) {
        qty=qty-double.parse(maList[index2].data.price);
        print('***********');
        print(maList[index2].qty);
        print('***********');
        print(index2);
        maList[index2].qty--;
       persons.removeAt(key);
        print(persons);

      } else {

        qty=qty-double.parse(maList[index2].data.price);
        maList.removeWhere((key, value) => key == index2);
        persons.removeWhere((element) => element["product_id"] == r);
        showDialog(
          context: context,
          builder: (BuildContext context) => removeDialog(context),
        );

        print(persons);
      }
    });
  }
void delete(dynamic key){
  
}
}


