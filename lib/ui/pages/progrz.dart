// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
class progress extends StatefulWidget {
  const progress({Key key}) : super(key: key);

  @override
  State<progress> createState() => _progressState();
}

class _progressState extends State<progress> {
  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: Builder(
        builder: (context) => Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text('Show for a second'),
                onPressed: () {
                  final progress = ProgressHUD.of(context);
                  progress.show();
                  Future.delayed(Duration(seconds: 3), () {
                    progress.dismiss();
                  });
                },
              ),
              RaisedButton(
                child: const Text('Show with text'),
                onPressed: () {
                  final progress = ProgressHUD.of(context);
                  progress.showWithText('Loading...');
                  Future.delayed(Duration(seconds: 3), () {
                    progress.dismiss();
                  });
                },
              ),
              RaisedButton(
                child: Text('S text'),
                onPressed: () {
          print('text');
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
