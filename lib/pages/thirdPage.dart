import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/getxController.dart';
import '../widgets/tapWidgets.dart';
import 'package:get/get.dart';

import 'myhomepage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TapContoller tapContoller = Get.find();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapContoller>(builder: (_){
              return TapWidget(text:tapContoller.x.toString(),ontap:(){
                Get.to(MyHomePage());
              });
            }),
          ],),
      ),
    );
  }
}
