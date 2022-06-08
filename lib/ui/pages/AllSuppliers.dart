
import 'package:demo5/ui/pages/AllCostumers.dart';
import 'package:flutter/material.dart';

class AllSuppliers extends StatefulWidget {
  const AllSuppliers({Key key}) : super(key: key);

  @override
  State<AllSuppliers> createState() => _AllSuppliersState();
}

class _AllSuppliersState extends State<AllSuppliers> {
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
     double widht  = MediaQuery.of(context).size.width;
    debugShowCheckedModeBanner: false;
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
        appBar: AppBar(

            title: const Text('All Suppliers')

        ),


        body: Center(
            child: Column(
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
                              icon: Icon(Icons.search),
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
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(15),

                              child:Image.asset('assets/images/supplier.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          SizedBox(width: 1,),
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
                                                    SizedBox(height: 8,),
                                                    Text( "Pepsi",
                                                        style: TextStyle(color: Colors.blue,fontSize: 20)),
                                                    SizedBox(height:10,),
                                                    Text(
                                                        "jhon",
                                                        style:  TextStyle(fontSize: 10)),
                                                    Text(
                                                      "88800891994",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "pepsi9@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "USA",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),


                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  SizedBox(width: 150,),

                                  Column(
                                      children: [

                                        Row(
                                            children:
                                            [


                                              IconButton(
                                                  icon: const Icon(Icons.phone),
                                                  alignment:Alignment.topRight,
                                                  iconSize: 24.0,
                                                  color: Colors.indigo,
                                                  onPressed: (){

                                                  }

                                              ),



                                            ]
                                        ),


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
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(15),

                              child:Image.asset('assets/images/supplier.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          SizedBox(width: 1,),
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
                                                    SizedBox(height: 8,),
                                                    Text( "Adidas",
                                                        style: TextStyle(color: Colors.blue)),
                                                    SizedBox(height:10,),
                                                    Text(
                                                        "jhon due",
                                                        style:  TextStyle(fontSize: 10)),
                                                    Text(
                                                      "880855585588",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "adidas@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "USA",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),


                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  SizedBox(width: 150,),

                                  Column(
                                      children: [

                                        Row(
                                            children:
                                            [


                                              IconButton(
                                                  icon: const Icon(Icons.phone),
                                                  alignment:Alignment.topRight,
                                                  iconSize: 24.0,
                                                  color: Colors.indigo,
                                                  onPressed: (){

                                                  }

                                              ),



                                            ]
                                        ),


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
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(15),

                              child:Image.asset('assets/images/supplier.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          SizedBox(width: 1,),
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
                                                    SizedBox(height: 8,),
                                                    Text( "Evaly",
                                                        style: TextStyle(color: Colors.blue)),
                                                    SizedBox(height:10,),
                                                    Text(
                                                        "Jamil",
                                                        style:  TextStyle(fontSize: 10)),
                                                    Text(
                                                      "018356245086",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "evaly@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Dhaka",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),


                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  SizedBox(width: 150,),

                                  Column(
                                      children: [

                                        Row(
                                            children:
                                            [


                                              IconButton(
                                                  icon: const Icon(Icons.phone),
                                                  alignment:Alignment.topRight,
                                                  iconSize: 24.0,
                                                  color: Colors.indigo,
                                                  onPressed: (){

                                                  }

                                              ),



                                            ]
                                        ),


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
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(15),

                              child:Image.asset('assets/images/supplier.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          SizedBox(width: 1,),
                          Expanded(
                            child: Center(
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
                                                      SizedBox(height: 8,),
                                                      Text( "jon",
                                                          style: TextStyle(color: Colors.blue)),
                                                      SizedBox(height:10,),
                                                      Text(
                                                          "jamal",
                                                          style:  TextStyle(fontSize: 10)),
                                                      Text(
                                                        "015836249752",
                                                        style:  TextStyle(fontSize: 10),
                                                      ),
                                                      Text(
                                                        "jamul@gmail.com",
                                                        style:  TextStyle(fontSize: 10),
                                                      ),
                                                      Text(
                                                        "liuc",
                                                        style:  TextStyle(fontSize: 10),
                                                      ),


                                                    ]
                                                )
                                              ]
                                          ),

                                        ]
                                    ),
                                    SizedBox(width: 150,),

                                    Column(
                                        children: [

                                          Row(
                                              children:
                                              [


                                                IconButton(
                                                    icon: const Icon(Icons.phone),
                                                    alignment:Alignment.topRight,
                                                    iconSize: 24.0,
                                                    color: Colors.indigo,
                                                    onPressed: (){

                                                    }

                                                ),



                                              ]
                                          ),


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
                          ),



                        ],
                      ),
                    ),
                    elevation: 10,
                    margin: const EdgeInsets.all(10),
                  ),
                ]
            )

        )

    );





  }
}