// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'OrderHistory.dart';

class AddCostumer extends StatelessWidget {
  const AddCostumer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add Costumer'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Center(
            // child: ElevatedButton(
            // onPressed: () {
            // Navigator.pop(context);
            //},
            //child: const Text('Go back!'),
            //),

            child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text('Customer Name', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),

                TextField(
                  cursorColor: Colors.blue,
                  decoration: const InputDecoration(
                      hintText: 'Customer Name',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                const Text('Customer Cell', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Customer Cell',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                const Text('Customer Email', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Customer Email',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                const Text('Customer Address', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  minLines: 10,
                  maxLines: 20,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Coutomer Address',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                TextButton(

                  child: const Text("Add Customer"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.white, width: 1),
                    elevation: 20,
                    minimumSize: const Size(100, 50),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                  ),
                  onPressed:() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderHistory()),
                    );

                  },
                )
              ],
            ),
          ),

        ));

  }
}