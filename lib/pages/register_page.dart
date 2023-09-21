import 'package:chatapp/widgets/widgets.dart';
import 'package:flutter/material.dart';


class RegisterPage extends StatelessWidget {
const RegisterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: const  Color.fromARGB(255, 221, 221, 221),
      body:SafeArea(
        child: SingleChildScrollView(
          physics:const  BouncingScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Logo(title: 'Register',),
                _Form(),
                
                Labels(ruta: 'login', textl1: 'Tienes una Cuenta', textl2: 'Inicia sesion',),
                Text('Terminos y condiciones de uso',style: TextStyle(fontWeight: FontWeight.w400),)
            ],),
          ),
        ),
      )
      );
      }
      }




class _Form extends StatefulWidget {
  
  const _Form();

  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
    final userController = TextEditingController();
    final  emailcontroller = TextEditingController();
     final passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child:Column(children: [
           CustomInput(icon:Icons.person, placeholder: 'User', 
           keyboardType:TextInputType.emailAddress ,isPassword:false, oneditingComplete: () {  }, textEditingController: userController,),
           CustomInput(icon:Icons.email_outlined, placeholder: 'Email', 
           keyboardType:TextInputType.emailAddress ,isPassword:false, oneditingComplete: () {  }, textEditingController: emailcontroller,),
           CustomInput(icon:Icons.password_outlined, placeholder: 'Password', 
           keyboardType:TextInputType.text ,isPassword:true, oneditingComplete: () {  }, textEditingController:passwordcontroller,),
           RaisedButton(text: 'Register',funtion: (){
        
            
           },)
             
           
            
            //  todo crear boton
            // TextButton(onPressed: (){}, child: Text('ok')),
          ],),
        );
     
  }
}

