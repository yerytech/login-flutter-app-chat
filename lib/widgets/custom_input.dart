

import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  const CustomInput({super.key, required this.icon, required this.placeholder,  required this.keyboardType, required this.isPassword, required this.oneditingComplete, required this.textEditingController});
    final IconData icon;
    final String placeholder;
   final TextEditingController textEditingController;
    final TextInputType keyboardType;
    final bool isPassword;
    final VoidCallback oneditingComplete;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.only(top: 5,bottom: 5,left: 5,right: 50) ,
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset:const Offset(0, 5),
            blurRadius: 5,
            ),],
            borderRadius: BorderRadius.circular(30),
            color: Colors.white),
          child:  TextField(
            onEditingComplete: oneditingComplete,
            obscureText: isPassword,
            autocorrect: false,
            keyboardType: keyboardType,
            decoration: InputDecoration( prefixIcon: Icon(icon),
            focusedBorder: InputBorder.none,
            border: InputBorder.none,
            hintText:placeholder,
            
            
            
            ),
            





        ),);
  }
}