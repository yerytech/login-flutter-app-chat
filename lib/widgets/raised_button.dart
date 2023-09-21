import 'package:flutter/material.dart';

class RaisedButton extends StatelessWidget {
  const RaisedButton({super.key, required this.text, required this.funtion});
   final String text;
   final VoidCallback  funtion;
  @override
  Widget build(BuildContext context) {
    return TextButton(
    
       style:ButtonStyle(
        elevation:MaterialStateProperty.all(2),
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        shape: MaterialStateProperty.all(const StadiumBorder()),
        


       ),
      onPressed: funtion, child:SizedBox(
          height: 40,
        width: double.infinity,child:Center(child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 18),),),) );
  }
}
