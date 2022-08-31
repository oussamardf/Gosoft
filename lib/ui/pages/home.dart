import 'package:demo5/ui/pages/cart.dart';
import 'package:demo5/ui/pages/progrz.dart';

import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import '../../Utils/custom_clipper.dart';
import 'AddCostumer.dart';
import 'AllSuppliers.dart';
import 'BarCode.dart';
import 'OrderHistory.dart';
import 'login.dart';

class HOME extends StatefulWidget {
  const HOME({Key key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {

  @override
  Widget build(BuildContext context) {
 var width=MediaQuery.of(context).size.width;
var height =MediaQuery.of(context).size.height;
    return Scaffold(


        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.blueGrey,
              ),
              onPressed: () async{
                SharedPreferences pref=await SharedPreferences.getInstance();
                await pref.clear();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) =>  const MyLogin()),
                        (route)=> false);
                // do something
              },
            )
          ],
          title: const Text('Home',
          style: TextStyle(color: Colors.white),),
          centerTitle: true,
        ),

      body:Padding(

          padding: const EdgeInsets.all(0),

          child: ListView(
              children: <Widget>[

                ClipPath(
                  clipper: MyCustom(),

                  child: const SizedBox(
                    height: 260.0,

                    child:

                    DrawerHeader(
                      margin: EdgeInsets.all(0.0),
                      padding: EdgeInsets.all(0.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(image:
                          AssetImage(
                            "assets/images/gosoft3.jpg",

                          )
                          ),

                          gradient: LinearGradient(

                              colors: [
                                Colors.blue,
                                Colors.blue

                              ],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            tileMode: TileMode.clamp,
                          )
                      ), child: null,

                    ),
                  ),
                ),


                Row(
                  children: [
                    //Spacer(),
                   // SizedBox(width: width*0.01,height: height*0.2),
                    Column(

                      children: [
                        Container(
                          width: width*0.44,
                          height: height*0.24,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>   AddCostumer()),
                            );
                              },
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                                Spacer(),
                                // SizedBox(height: 7,),
                                const Text(
                                  'CUSTMERS',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                    width: width*0.24,
                              //    alignment: Alignment.center,
                                    margin: const EdgeInsets.only(top: 25),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                      border: Border.all(
                                          width: 2,
                                          color: Colors.white,
                                      )
                                  ),
                                  child:
                                  Image.asset("assets/images/customer-review.png",

                                  ),

                                ),



                              ],
                            ),

                          ),

                        )
                      ],
                    ),
Spacer(),
                 //   SizedBox(width: width*0.1,height: height*0.3),
                    Column(

                      children: [
                        Container(
                          width: width*0.44,
                          height: height*0.24,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const AllSuppliers()),
                            );},
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                              Spacer(),
                                // const SizedBox(height: 7,),
                                const Text(
                                  'SUPPLIERS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                  width: width*0.24,
                                  //    alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 25),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      )
                                  ),
                                  child:
                                  Image.asset("assets/images/manufacture.png",

                                  ),

                                ),



                              ],
                            ),

                          ),

                        )

                      ],
                    ),

                  ],
                ),
SizedBox(height: height*0.04,),
                Row(
                  children: [

                  //  const SizedBox(width: 10,height: 200),
                    Column(

                      children: [
                        Container(
                          width: width*0.44,
                          height: height*0.24,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  OrderHistory()),
                            );},
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                               // const SizedBox(height: 7,),
                                Spacer(),
                                const Text(
                                  'PRODUCTS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(

                                  width: width*0.24,
                                  //    alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 25),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      )
                                  ),
                                  child:
                                  Image.asset("assets/images/box.png",

                                  ),

                                ),



                              ],
                            ),

                          ),

                        )
                      ],
                    ),
                   // const SizedBox(width: 40,height: 190),
                    Spacer(),
                    Column(

                      children: [
                        Container(
                          width: width*0.44,
                          height: height*0.24,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Cart()),
                            );},
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                             Spacer(),
                                const Text(
                                  'POS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                  width: width*0.24,
                                  //    alignment: Alignment.center,
                                  margin: const EdgeInsets.only(top: 25),
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.white,
                                      border: Border.all(
                                        width: 2,
                                        color: Colors.white,
                                      )
                                  ),
                                  child:
                                  Image.asset("assets/images/pos.png",

                                  ),

                                ),



                              ],
                            ),

                          ),

                        )
                      ],
                    ),

                  ],
                ),



//----------------------------------------
              ]
          )
      )


      );


  }
}

