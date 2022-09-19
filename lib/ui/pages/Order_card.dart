import '../../models/order.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'OrderHistory.dart';
class Ordercard extends StatelessWidget {
  final Order nasa;
  const Ordercard({Key key, this.nasa}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context)=>
            OrderHistory( nasa: nasa,)
        )
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,

        elevation: 105,
        child: Container(

          height: 110,
          padding: const EdgeInsets.all(8.0),
          width: 100,
          margin: EdgeInsets.all(4.0),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 0,right: 15),
                  child:  Container(
                    width: 100,
                    height: 100,
                    child: Text(nasa.id.toString(),
                      style:TextStyle(fontSize: 20) ,),

                  )
              ),
              SizedBox(width: 25),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 16.0,top: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                         nasa.dateCreated.toString(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),



                    ],
                  ),
                ),
              ),





            ],
          ),
        ),
      ),

    );
  }
}