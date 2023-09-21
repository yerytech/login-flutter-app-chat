import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  const Labels({super.key, required this.ruta, required this.textl1, required this.textl2});
  final String ruta;
  final String textl1;
  final String textl2;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
       Text('$textl1? ',style: const TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w300),),
      const SizedBox(height: 10,),
      GestureDetector(
         onTap: ()=>Navigator.pushReplacementNamed(context, ruta),
        child:  Text('$textl2! ',style: const TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),))
    ],);
  }
}