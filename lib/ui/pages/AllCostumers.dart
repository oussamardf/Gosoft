
import 'package:demo5/ui/pages/ShopInfo.dart';
import 'package:flutter/material.dart';



class AllCostumers extends StatelessWidget {
  const AllCostumers({Key key,  Function(dynamic context) builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;
    theme: ThemeData(
      primarySwatch: Colors.blue,
     // visualDensity: VisualDensity.adaptivePlatformDensity,
    );
    return Scaffold(
        appBar: AppBar(

            title: const Text('All Costumer')

        ),

        floatingActionButton:     FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ShopInfo()),
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


                        TextField(

                          decoration: InputDecoration(
                            hintText: '    Search Here ...',
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
                      height: 100,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15),

                              child:Image.asset('assets/images/customer.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          const SizedBox(width: 1,),
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

                                                  const [
                                                    SizedBox(height: 8,),
                                                    Text( "Jhon Due",
                                                        style: TextStyle(color: Colors.blue)),
                                                    SizedBox(height:9,),
                                                    Text(
                                                      "88856991994",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "jhon@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                        "USA",
                                                        style:  TextStyle(fontSize: 10)),



                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  const SizedBox(width: 150,),

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
                              padding: const EdgeInsets.all(15),

                              child:Image.asset('assets/images/customer.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          const SizedBox(width: 1,),
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

                                                  const [
                                                    SizedBox(height: 8,),
                                                    Text( "Jhonson",
                                                        style: TextStyle(color: Colors.blue)),
                                                    SizedBox(height:3,),

                                                    Text(
                                                      "880810235588",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "jhonson@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Australia",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),


                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  const SizedBox(width: 150,),

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
                              padding: const EdgeInsets.all(15),

                              child:Image.asset('assets/images/customer.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          const SizedBox(width: 1,),
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

                                                  const [
                                                    SizedBox(height: 8,),
                                                    Text( "Rakib Uddin",
                                                        style: TextStyle(color: Colors.blue)),
                                                    SizedBox(height:3,),

                                                    Text(
                                                      "011256245086",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "rakib@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Agrabad,Ctg",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),


                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  const SizedBox(width: 150,),

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
                              padding: const EdgeInsets.all(15),

                              child:Image.asset('assets/images/customer.png',
                                height:50 ,
                                width: 40,),


                            ),
                          ),
                          const SizedBox(width: 1,),
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

                                                  const [
                                                    SizedBox(height: 8,),
                                                    Text( "Jassim Uddin",
                                                        style: TextStyle(color: Colors.blue)),
                                                    SizedBox(height:3,),

                                                    Text(
                                                      "0158362452002",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "jassim@gmail.com",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),
                                                    Text(
                                                      "Chitagong",
                                                      style:  TextStyle(fontSize: 10),
                                                    ),


                                                  ]
                                              )
                                            ]
                                        ),

                                      ]
                                  ),
                                  const SizedBox(width: 150,),

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
                ]
            )

        )

    );





  }
}