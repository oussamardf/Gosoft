import 'package:flutter/material.dart';

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
                Text('Supplier Name', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Name',
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),

                Text('Supplier Contact Person', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),

                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Contact Person',
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                Text('Supplier Cell', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Cell',
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                Text('Supplier Email', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Email',
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                Text('Supplier Address', textAlign: TextAlign.left),
                SizedBox(
                  width: 25,
                  height: 10,
                ),
                TextField(
                  minLines: 8,
                  maxLines: 12,
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                      hintText: 'Supplier Address',
                      contentPadding: const EdgeInsets.all(10),
                      border: OutlineInputBorder(
                      )

                  ),
                ),
                TextButton(

                  child: Text("Edit"),
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blue,
                    side: BorderSide(color: Colors.white, width: 1),
                    elevation: 15,
                    minimumSize: Size(80, 50),
                    shadowColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),

                  ),
                  onPressed:() {

                  },
                )
              ],
            ),
          ),

        ));

  }
}