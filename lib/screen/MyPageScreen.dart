import 'package:flutter/material.dart';
import 'package:oremeshi/const/PathConst.dart';
import 'package:oremeshi/common/AppBottomNavigation.dart';

class MyPageScreen extends StatefulWidget{

  @override
  _MyPageScreen createState() =>_MyPageScreen();
}

class _MyPageScreen extends State<MyPageScreen>{

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: const AppBottomNavigation(currentIndex: 2)
    );
  }
}