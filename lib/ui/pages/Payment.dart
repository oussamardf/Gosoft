import 'package:flutter/material.dart';

import 'EditSuppliers.dart';

class payment extends StatelessWidget {
  const payment({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

            title: const Text('All Payment Method')

        ),

        floatingActionButton:     FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EditSuppliers()),
            );

            // Add your onPressed code here!
          },
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add),
        ),
        body: Center(

          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Column(

                  //adding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    children : [

                      SizedBox(height: 5,),
                      TextField(

                        decoration: InputDecoration(
                          hintText: 'Enter a search term',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2.0),
              ),
                          suffixIcon: IconButton(
                            onPressed: (() {

                            }),
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),


                    ]
                ),
                Column(
                    children : [
                      Card (
                        elevation: 10,
                        color: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),

                          ),


                        child:Container(

                          height: 100,
                          color: Colors.white,
                          child: Row(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Expanded(
                                      child:Image.asset('assets/images/debit-card.png',
                                        height:50 ,
                                        width: 40,),
                                      flex:2 ,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child:Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: ListTile(
                                            title: Text("Paypal"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                      icon: Icon(Icons.delete),
                                      color: Colors.red,
                                      alignment:Alignment.topRight,
                                      iconSize: 30,
                                      onPressed: () {
                                      }
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),
                      Card (
                        elevation: 20,
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:Container(
                          height: 100,
                          color: Colors.white,
                          child: Row(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Expanded(
                                      child:Image.asset('assets/images/debit-card.png',
                                        height:50 ,
                                        width: 40,),
                                      flex:2 ,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child:Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: ListTile(
                                            title: Text("Card"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                      icon: Icon(Icons.delete),
                                      color: Colors.red,
                                      alignment:Alignment.topRight,
                                      iconSize: 30,
                                      onPressed: () {
                                      }
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),



                      Card (

                        elevation: 20,
                        color: Colors.amber,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child:Container(
                          height: 100,
                          color: Colors.white,
                          child: Row(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Expanded(
                                      child:Image.asset('assets/images/debit-card.png',
                                        height:50 ,
                                        width: 40,),
                                      flex:2 ,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child:Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Expanded(
                                          flex: 10,
                                          child: ListTile(
                                            title: Text("Cash"),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: IconButton(
                                      icon: Icon(Icons.delete),
                                      color: Colors.red,
                                      alignment:Alignment.topRight,
                                      iconSize: 30,
                                      onPressed: () {
                                      }
                                  ),
                                ),
                              ]
                          ),
                        ),
                      ),


                    ]
                )





              ]
          ),

        )
    );
  }
}
