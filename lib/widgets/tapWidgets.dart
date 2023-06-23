import 'package:flutter/material.dart';

class TapWidget extends StatelessWidget {

  final String text;
  final VoidCallback ontap;

  const TapWidget({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:ontap,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(child: Text(text,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),)),
      ),
    );
  }
}