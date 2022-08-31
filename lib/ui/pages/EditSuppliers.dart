import 'package:flutter/material.dart';

import 'OrderHistory.dart';

class EditSuppliers extends StatelessWidget {
  const EditSuppliers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edit Suppliers'),
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
                const Text('Supplier Name', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Name',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),

                const Text('Supplier Contact Person', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),

                const TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Contact Person',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                const Text('Supplier Cell', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Cell',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                const Text('Supplier Email', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Email',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                const Text('Supplier Address', textAlign: TextAlign.left),
                const SizedBox(
                  width: 25,
                  height: 10,
                ),
                const TextField(
                  minLines: 8,
                  maxLines: 12,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Address',
                      contentPadding: EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                TextButton(

                  child: const Text("Edit"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.white, width: 1),
                    elevation: 15,
                    minimumSize: const Size(80, 50),
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