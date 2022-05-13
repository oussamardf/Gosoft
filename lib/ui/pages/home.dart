import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../Utils/custom_clipper.dart';
import 'BarCode.dart';
import 'login.dart';
class HOME extends StatefulWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () async{
                SharedPreferences pref=await SharedPreferences.getInstance();
                await pref.clear();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) =>  Login2()),
                        (route)=> false);
                // do something
              },
            )
          ],
          title: const Text('Home'),
        ),

      body:Padding(

          padding: const EdgeInsets.all(1),

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
                    const SizedBox(width: 10,height: 120),
                    Column(

                      children: [
                        SizedBox(
                          width: 170.0,
                          height: 175.0,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  BareCode()),
                            );
                              },
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                                const SizedBox(height: 7,),
                                const Text(
                                  'CUSTMERS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                    width: double.infinity,
                                  alignment: Alignment.center,
                                    margin: const EdgeInsets.all(22),
                                  padding: const EdgeInsets.all(13),
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
                    const SizedBox(width: 40,height: 200),
                    Column(

                      children: [
                        SizedBox(
                          width: 170.0,
                          height: 175.0,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BareCode()),
                            );},
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                                const SizedBox(height: 7,),
                                const Text(
                                  'SUPPLIERS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(22),
                                  padding: const EdgeInsets.all(13),
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
                Row(
                  children: [
                    SizedBox(width: 10,height: 200),
                    Column(

                      children: [
                        SizedBox(
                          width: 170.0,
                          height: 175.0,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BareCode()),
                            );},
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                                const SizedBox(height: 7,),
                                const Text(
                                  'PRODUCTS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(22),
                                  padding: const EdgeInsets.all(13),
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
                    SizedBox(width: 40,height: 190),
                    Column(

                      children: [
                        SizedBox(
                          width: 170.0,
                          height: 175.0,

                          // height: double.infinity,
                          child:

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            highlightElevation: 2,
                            onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BareCode()),
                            );},
                            color: Colors.blue,
                            disabledColor: Colors.black,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  <Widget>[
                                const SizedBox(height: 7,),
                                const Text(
                                  'POS',
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),

                                Container(

                                  width: double.infinity,
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.all(22),
                                  padding: const EdgeInsets.all(13),
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

