

import 'package:flutter/material.dart';
import 'package:signin/platformWidget.dart';

class SigninButtons extends PlatformWidget<FlatButton, FlatButton> {

  @override 
  createIosWidget(BuildContext context) => new FlatButton(onPressed: null, child: null);

  @override 
  createAndroidWidget(BuildContext context) => new FlatButton(onPressed: null, child: null);
}