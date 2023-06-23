import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx/pages/secondpage.dart';
import 'package:getx/widgets/getxController.dart';
import 'package:get/get.dart';
import '../widgets/tapWidgets.dart';
import 'First_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TapContoller tapContoller = Get.put(TapContoller());


    return Scaffold(
      appBar: AppBar(
        title: Text("GetX Practice"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
             GetBuilder<TapContoller>(builder: (_){
               return  TapWidget(text: tapContoller.x.toString() ,ontap:(){});
             }),





              SizedBox(height: 80,),
              TapWidget(text: "Tap",ontap:(){
                tapContoller.increaseX();
              }),
              SizedBox(height: 20,),
              TapWidget(text: "Go To The First Page",ontap:(){
                Get.to(FirstPage());
              }),

              SizedBox(height: 20,),
              TapWidget(text: "Go to second page",ontap:(){
                Get.to(SecondPage());
              }),
              SizedBox(height: 20,),
              TapWidget(text: "Tap4",ontap:(){}),
            ],
          ),
        ),
      ),
    );
  }
}


