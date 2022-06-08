import 'package:flutter/material.dart';

class ShopInfo extends StatelessWidget {
  const ShopInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Shop Information'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Center(
            // child: ElevatedButton(
            // onPressed: () {
            // Navigator.pop(context);
            //},
            //child: const Text('Go back!'),
            //),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text('Shop Name', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Name',
                      hintStyle: TextStyle( color: Colors.blue),
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      )

                  ),
                ),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                Text('Shop Contact Number', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),

                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Shop Contact Number',
                      hintStyle: TextStyle( color: Colors.blue),

                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      )

                  ),
                ),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                Text('Shop Email', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Shop Email',
                      hintStyle: TextStyle( color: Colors.blue),
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      )
                  ),
                ),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                Text('Shop Address', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  minLines: 10,
                  maxLines: 20,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Shop Address',
                      hintStyle: TextStyle( color: Colors.blue),
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      )
                  ),
                ),  SizedBox(
                  width: 25,
                  height: 10,
                ),
                Text('Tax in percentage(%)', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Tax in percentage(%)',
                      hintStyle: TextStyle( color: Colors.blue),
                      contentPadding: EdgeInsets.all(10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      )

                  ),
                ),


              ],
            ),
          ),

        ));

  }
}