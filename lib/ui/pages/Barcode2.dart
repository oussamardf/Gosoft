import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:demo5/ui/pages/progrz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../models/classe.dart';
import 'BarCode.dart';
import 'cart.dart';
List<Map<String, dynamic>> prix =  [];
double qty=0.0;
int quatite=1;
class QRViewExample extends StatefulWidget {
  const QRViewExample({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QRViewExampleState();
}

class _QRViewExampleState extends State<QRViewExample> {
  int counter=0;
  Barcode result;
  QRViewController controller;
  final storage = new FlutterSecureStorage();
var pr=0;
  var data;

  double price=0.0;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
final toast =FToast();
  @override
void initState(){
  super.initState();
  toast.init(context);
//  scanBarcodeNormal2();
}
  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() async{
    super.reassemble();

    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("barcode", result.code);
    setState((){

    });
   if (Platform.isAndroid) {
      controller.pauseCamera();
    }
else     controller.resumeCamera();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
     //   title: const Text('AppBar Demo'),
        backgroundColor: Colors.black,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Cart()),
              )
              },
            ),
            Center(child: Text('${qty}')),





    ]
      ),

      body: Container(

        //color: Colors.transparent,

        child: Column(
          children: <Widget>[
            Expanded(flex: 7, child: _buildQrView(context)),
            Expanded(
              flex: 1,
              child: FittedBox(
                fit: BoxFit.none,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    if (result != null&&data!=null)


                      Text(
                          'name:${data[0].name??''}   Data: ${result.code??''}')
                    else
                      const Text('Scan a code'),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () async {
                              await controller?.pauseCamera();
                            },
                            child: const Text('pause',
                                style: TextStyle(fontSize: 20)),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(8),
                          child: ElevatedButton(
                            onPressed: () async {
                              await controller?.resumeCamera();
                            },
                            child: const Text('resume',
                                style: TextStyle(fontSize: 20)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),

              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildQrView(BuildContext context) {
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
        MediaQuery.of(context).size.height < 400)
        ? 150.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),

    );

  }

  void _onQRViewCreated(QRViewController controller) {

    setState(() {
      this.controller = controller;


    });
    controller.scannedDataStream.listen((scanData)  {
      controller.pauseCamera();

        result = scanData;

      //  sleep(Duration(seconds:5));
        scanBarcodeNormal2();




    //  sleep(Duration(seconds:5));
    });

  }


  void scanBarcodeNormal2() async {


    SharedPreferences pref = await SharedPreferences.getInstance();
    var token= pref.getString("token");
    String barcodeScanRes;
    barcodeScanRes=result.code??'';


    final response = await http.get(
      Uri.parse(
          'https://qlf1.gosoft.ma/index.php/wp-json/wc/v3/products?per_page=100&sku=$barcodeScanRes'),
      headers: <String, String>{
        HttpHeaders.authorizationHeader: "Bearer $token"
      },
    );






    if (response.statusCode == 200) {
      print(response.statusCode);

print('test whith sucess');

     showToast();

controller.resumeCamera();



      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();

      data = parsed.map<Data>((json) => Data.fromJson(json)).toList();
var  id= data[0].id??'';
setState((){
  Map<String, dynamic> map={

        "product_id": id,




  };

  persons.add(map);

// print(pricee);
  print (persons);
  //overlayEntry.remove();
});




qty=double.parse(data[0].price)+qty;


print ('le prix');
print(qty);








      if (data.length > 0) {
        if (maList.containsKey(barcodeScanRes)) {
          maList[barcodeScanRes].qty++;
        } else {
          maList[barcodeScanRes] = shopinCartItem(data: data[0], qty: 1);
        }

      }

    }

    else {

      print(response.statusCode);
     // print(barcodeScanRes);
    }




  //  await Future.delayed(Duration(seconds: 5));


  }
  Widget Toast()=>
      Builder(
    builder: (context) {

      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.greenAccent,
        ),
        child: Row(

          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  (data[0].images.isNotEmpty)
                      ? data[0].images[0].src
                      : ""),

              radius: 30,
            ),
            Flexible(
              child: Text(
                data[0].name??'',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                //"\$${  maList[index].data.price.toString()}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      );
    }
  );


void showToast()=> toast.showToast(
    child:Toast(),
  gravity: ToastGravity.CENTER,
);



  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}


