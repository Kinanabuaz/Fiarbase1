import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/Lecture4/input_widget.dart';
import 'package:untitled12/Lecture4/login_controller.dart';
import 'package:untitled12/lecture3/login.screen.dart';

class LoginScreen1 extends StatelessWidget {
  TextEditingController EmailTextEditingController = TextEditingController();
  TextEditingController PaswordTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Screen Personality",style: TextStyle(color: Colors.black),),),backgroundColor: Colors.blueAccent,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0,),
            Consumer<LoginController>(
                builder: (context, Login_C, child){
                  return InputWidget1(
                    TEController: EmailTextEditingController, label: "Email", hintText: "demo@demo.com", prefixIcon: Icon(Icons.email), iconColor: Colors.black,
                   obscureText: false ,errorText: Login_C.showErrorEmail ? "Inter Valid Email":null,);
                  },
            ),
            SizedBox(height: 20.0,),
            Consumer<LoginController>(
                builder: (context, Login_C, child) {
                  return InputWidget1(TEController: PaswordTextEditingController, label: "Password", hintText: "Inter Password", prefixIcon: Icon(Icons.password),
                      iconColor:Colors.black , obscureText: true,
                      errorText :Login_C.showErrorPassword ? "Inter Your Password" : null, );
                },),
            SizedBox(height: 20.0,),
            TextButton(
              onPressed:()
              {
                Provider.of<LoginController>(context, listen: false).checkEmail(
                  email : EmailTextEditingController.text);
                Provider.of<LoginController>(context, listen: false).checkPassword(
                    password:PaswordTextEditingController.text );
            },
              child: Text("Login"),
            )
          ],
        ),

      ),
    );
  }
}
