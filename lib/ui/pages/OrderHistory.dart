import 'dart:convert';
import 'dart:io';

import 'package:demo5/ui/pages/AllSuppliers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/classe.dart';


class OrderHistory extends StatefulWidget {
  const OrderHistory({Key key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  var data;


  List<Data> dataa = [] ;
  Map maList = {};
  var index;
  var index2;
  var map;

  void initState(){
    super.initState();
    setState((){
      getprd();
    });

  }
  Future getprd() async {
    SharedPreferences pref2 = await SharedPreferences.getInstance();
    var token2= pref2.getString("token");
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
        setState((){
          data = jsonDecode(response.body.toString());

        });
        print("sku");
        print( data[9]['line_items'][0]['sku']);
        print( data[0]['line_items'][0]['name']);

      //  var barcodeScanRes=  data[0]['line_items'][0]['sku'];
       /* if (data.length > 0) {
          if (maList.containsKey(barcodeScanRes)) {
            maList[barcodeScanRes].qty++;
          } else {
            maList[barcodeScanRes] = shopinCartItem(data: data[0], qty: 1);
          }
        }*/


        print(data[8]['id']);
        print(data[0]['line_items'].length);

      }
      else {
        print(response.statusCode);

        print('not done');

      }
    }
    catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    final double itemHeight= size.height/6.7;
    final double itemWidth= size.width;
    debugShowCheckedModeBanner: false;
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
      appBar: AppBar(

          title: const Text('Order History')

      ),

      floatingActionButton:     FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>const AllSuppliers()),
          );
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body:Center(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    onChanged: (text){
                      text=text.toLowerCase();
                      print(text);
                      setState((){
                     //   search(text);
                        /* data=data.where((e){
                            var finalname=e.name.toString().toLowerCase();
                            return finalname.contains(text);
                          }).toList();*/

                      });
                    },


                    decoration: InputDecoration(

                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                                width: 1, color: Colors.black
                            )
                        )
                    ),
                  ),

                )
                ),
                IconButton(
                    onPressed:() {
                      setState((){
                       // getdata();
                        //search(query!);
                      });

                      //   search(query!);
                    },
                    icon: Icon(Icons.search)
                )

              ],
            ),

            Expanded(
                child:


            GridView.builder(
    itemCount:(data==null)?0:data.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 1,
    childAspectRatio: (itemWidth / itemHeight),


    ),
    padding: EdgeInsets.all(8),
    itemBuilder: (context, key){
    if(data!=null) {
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
                    padding: const EdgeInsets.only(left: 0, right: 15),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(

                        data[key]['line_items'][0]['image']['src'],),

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

                          data[key]['line_items'][0]['name'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),
                        Text(

                          'Price: ${data[key]['line_items'][0]['total']} ',
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


                 //   Spacer(),



                  ],
                ),

              ],
            ),
          ),
        );
    }

    else{
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    },
    )


    ),



    ],
    ),
    )
    );
  }
}
class shopinCartItem {
  shopinCartItem({  this.data,   this.qty});

  Data data;
  int qty;
}