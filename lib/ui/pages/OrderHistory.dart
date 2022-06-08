import 'package:demo5/ui/pages/AllSuppliers.dart';
import 'package:flutter/material.dart';



class OrderHistory extends StatelessWidget {
  const OrderHistory({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            MaterialPageRoute(builder: (context) =>AllSuppliers()),
          );
          // Add your onPressed code here!
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Column(

              //adding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                children : [


                  TextField(

                    decoration: InputDecoration(
                      hintText: '   Search Here ...',
                      suffixIcon: IconButton(
                        onPressed: (() {

                        }),
                        icon: const Icon(Icons.search),
                      ),
                    ),
                  ),


                ]
            ),
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [


                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                                children: [
                                  Row(
                                      children:
                                      [

                                        Column(
                                            children:

                                            [
                                              const SizedBox(height: 3),
                                              const Text( "INV820201596098193",
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.blue , fontSize: 10)),

                                              const SizedBox(height:5,),
                                              const Text(
                                                "Walk in Customer",
                                                style:  const TextStyle(fontSize: 11),
                                              ),
                                              const SizedBox(height:3,),

                                              RichText(text: const TextSpan(
                                                  text: 'PICK UP',
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.grey ,fontSize: 10), /*defining default style is optional */
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' CASH', style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),
                                                  ]
                                              )),
                                              Text(
                                                  "02:36 PM July 30 , 2020",
                                                  style:  TextStyle(fontSize: 11)),



                                            ]
                                        )
                                      ]
                                  ),

                                ]
                            ),
                            const SizedBox(width: 200,),

                            Column(
                                children: [


                                  Row(
                                      children:
                                      [
                                        IconButton(
                                            icon: const Icon(Icons.delete),
                                            alignment:Alignment.topRight,
                                            iconSize: 24.0,
                                            color: Colors.red,
                                            onPressed: (){

                                            }
                                        ),


                                      ]
                                  ),





                                ]
                            )




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
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [

                    const SizedBox(width: 5,),
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                                children: [
                                  Row(
                                      children:
                                      [

                                        Column(
                                            children:

                                            [
                                              const SizedBox(height: 8,),
                                              const Text( "INV820201596098531",
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.blue , fontSize: 10)),

                                              const SizedBox(height:5,),
                                              const Text(
                                                "Jhon Due",
                                                style:  const TextStyle(fontSize: 11),
                                              ),
                                              const SizedBox(height:5,),
                                              RichText(text: const TextSpan(
                                                  text: 'HOME DELIVERY',
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.grey,fontSize: 10 ), /*defining default style is optional */
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' CASH', style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),
                                                  ]
                                              )),
                                              const Text(
                                                  "12:33 PM July 30 , 2020",
                                                  style:  TextStyle(fontSize: 11)),



                                            ]
                                        )
                                      ]
                                  ),

                                ]
                            ),
                            const SizedBox(width: 200,),

                            Column(
                                children: [


                                  Row(
                                      children:
                                      [
                                        IconButton(
                                            icon: const Icon(Icons.delete),
                                            alignment:Alignment.topRight,
                                            iconSize: 24.0,
                                            color: Colors.red,
                                            onPressed: (){

                                            }
                                        ),


                                      ]
                                  ),





                                ]
                            )




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
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [

                    const SizedBox(width: 5,),
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                                children: [
                                  Row(
                                      children:
                                      [

                                        Column(
                                            children:

                                            [
                                              const SizedBox(height: 8,),
                                              const Text( "INV820201596060576",
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),

                                              const SizedBox(height:5,),
                                              const Text(
                                                "Walk in Customer",
                                                style:  const TextStyle(fontSize: 11),
                                              ),
                                              const SizedBox(height:5,),
                                              RichText(text: const TextSpan(
                                                  text: 'PICK UP',
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.grey ,fontSize: 10), /*defining default style is optional */
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' CASH', style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),
                                                  ]
                                              )),
                                              const Text(
                                                  "04:52 PM July 26 , 2020",
                                                  style:  const TextStyle(fontSize: 11)),



                                            ]
                                        )
                                      ]
                                  ),

                                ]
                            ),
                            const SizedBox(width: 200,),

                            Column(
                                children: [


                                  Row(
                                      children:
                                      [
                                        IconButton(
                                            icon: const Icon(Icons.delete),
                                            alignment:Alignment.topRight,
                                            iconSize: 24.0,
                                            color: Colors.red,
                                            onPressed: (){

                                            }
                                        ),


                                      ]
                                  ),





                                ]
                            )




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
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [

                    const SizedBox(width: 5,),
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                                children: [
                                  Row(
                                      children:
                                      [

                                        Column(
                                            children:

                                            [
                                              const SizedBox(height: 8,),
                                              const Text( "INV820201596096848",
                                                  style: const TextStyle(color: Colors.white , backgroundColor: Colors.blue,fontSize: 10)),

                                              const SizedBox(height:5,),
                                              const Text(
                                                "Noor Mohammed Anik",
                                                style:  TextStyle(fontSize: 11),
                                              ),
                                              const SizedBox(height:5,),
                                              RichText(text: const TextSpan(
                                                  text: 'TABLE BOOKING',
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.grey,fontSize: 10 ), /*defining default style is optional */
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' CARD', style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),
                                                  ]
                                              )),
                                              const Text(
                                                  "07:20 PM July 24 , 2020",
                                                  style:  TextStyle(fontSize: 11)),



                                            ]
                                        )
                                      ]
                                  ),

                                ]
                            ),
                            const SizedBox(width: 200,),

                            Column(
                                children: [


                                  Row(
                                      children:
                                      [
                                        IconButton(
                                            icon: const Icon(Icons.delete),
                                            alignment:Alignment.topRight,
                                            iconSize: 24.0,
                                            color: Colors.red,
                                            onPressed: (){

                                            }
                                        ),


                                      ]
                                  ),





                                ]
                            )




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
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [

                    const SizedBox(width: 5,),
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                                children: [
                                  Row(
                                      children:
                                      [

                                        Column(
                                            children:

                                            [
                                              const SizedBox(height: 8,),
                                              const Text( "INV820201596095220",
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.blue,fontSize: 10)),

                                              const SizedBox(height:5,),
                                              const Text(
                                                "Walk in Customer",
                                                style:  const TextStyle(fontSize: 11),
                                              ),
                                              const SizedBox(height:5,),
                                              RichText(text: const TextSpan(
                                                  text: 'HOME DEKIVERY',
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.grey ,fontSize: 10), /*defining default style is optional */
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' CASH', style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),
                                                  ]
                                              )),
                                              const Text(
                                                  "06:54 PM July 24 , 2020",
                                                  style:  const TextStyle(fontSize: 11)),



                                            ]
                                        )
                                      ]
                                  ),

                                ]
                            ),
                            const SizedBox(width: 200,),

                            Column(
                                children: [


                                  Row(
                                      children:
                                      [
                                        IconButton(
                                            icon: const Icon(Icons.delete),
                                            alignment:Alignment.topRight,
                                            iconSize: 24.0,
                                            color: Colors.red,
                                            onPressed: (){

                                            }
                                        ),


                                      ]
                                  ),





                                ]
                            )




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
            Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child:Container(
                height: 70,
                color: Colors.white,
                child: Row(
                  children: [

                    const SizedBox(width: 5,),
                    Center(
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Column(
                                children: [
                                  Row(
                                      children:
                                      [

                                        Column(
                                            children:

                                            [
                                              const SizedBox(height: 8,),
                                              const Text( "INV820201596097829",
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.blue,fontSize: 10)),

                                              const SizedBox(height:5,),
                                              const Text(
                                                "Walk in Customer",
                                                style:  const TextStyle(fontSize: 11),
                                              ),
                                              const SizedBox(height:5,),
                                              RichText(text: const TextSpan(
                                                  text: 'PICK UP',
                                                  style: TextStyle(color: Colors.white , backgroundColor: Colors.grey,fontSize: 10 ), /*defining default style is optional */
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: ' CASH', style: TextStyle(color: Colors.white , backgroundColor: Colors.blue ,fontSize: 10)),
                                                  ]
                                              )),
                                              const Text(
                                                  "06:50 PM July 15 , 2020",
                                                  style:  TextStyle(fontSize: 11)),



                                            ]
                                        )
                                      ]
                                  ),

                                ]
                            ),
                            const SizedBox(width: 200,),

                            Column(
                                children: [


                                  Row(
                                      children:
                                      [
                                        IconButton(
                                            icon: const Icon(Icons.delete),
                                            alignment:Alignment.topRight,
                                            iconSize: 24.0,
                                            color: Colors.red,
                                            onPressed: (){

                                            }
                                        ),


                                      ]
                                  ),





                                ]
                            )




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
          ]
      ),
      ),
    );
  }
}