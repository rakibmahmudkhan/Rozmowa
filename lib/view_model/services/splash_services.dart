import 'dart:async';


import 'package:flutter/cupertino.dart';

import '../../utils/routes/route_name.dart';

class SplashServices{
 void isLogin(BuildContext context){
   Timer(Duration(seconds:3),()=> Navigator.pushNamed(context,RouteName.loginView));
 }
}