import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/thirdPage.dart';
import 'package:getx/widgets/getxController.dart';
import '../widgets/tapWidgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TapWidget(text: "Go To Third Page",ontap:(){
              Get.to(ThirdPage());
            }),
        ],),
      ),
    );
  }
}
