import 'package:flutter/material.dart';

class AppUtills {

  static void pushToScreen(BuildContext context,Widget screen ){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>screen)); 
  }
}
