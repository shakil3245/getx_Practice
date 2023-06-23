import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/widgets/getxController.dart';
import '../widgets/tapWidgets.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    TapContoller tapContoller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapContoller>(builder: (_){
              return TapWidget(text: tapContoller.x.toString(),ontap:(){});
            }),
            SizedBox(height: 20,),
            TapWidget(text: "Decrese",ontap:(){
              tapContoller.decreaseX();
            }),
          ],
        ),
      ),
    );
  }
}
