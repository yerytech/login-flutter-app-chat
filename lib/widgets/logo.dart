import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Center(child: Container(
      margin: const EdgeInsets.all(50),
      width: 170,
      child: Column(children: [ 
     const Image(image: AssetImage('assets/tag-logo.png')),
    Text(title, style:  const TextStyle(fontSize: 30),),



    ],),));
  }
}
