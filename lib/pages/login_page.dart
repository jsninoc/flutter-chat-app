import 'package:chat/widgets/blue_button.dart';
import 'package:chat/widgets/labels.dart';
import 'package:chat/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:chat/widgets/custom_input.dart';


class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Logo(title: 'Messenger',),
                _Form(),
                Labels(route: 'register', text: 'Crea una ahora', title: '¿No tienes cuenta?',),
                Text(
                  'Términos y condiciones de uso',
                  style: TextStyle(
                    fontWeight: FontWeight.w200
                  ),
                ),
                SizedBox(height: 5,)
              ],
            ),
          ),
        ),
      )
    );
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: <Widget>[
          CustomInput(
            icon: Icons.mail_outline, 
            placeholder: 'Correo', 
            textController: _emailController,
            keyboardType: TextInputType.emailAddress,
          ),
          CustomInput(
            icon: Icons.lock_outline, 
            placeholder: 'Contraseña', 
            textController: _passwordController,
            isPassword: true,
          ),
          BlueButon(
            onPressed: (){
              print(_emailController.text);
              print(_passwordController.text);
            },
            text: 'Ingresar',
          )
        ],
      ),
    );
  }
}