import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled12/lecture3/login.controller.dart';

import 'inputwidget.dart';

class Loginscreen extends StatelessWidget {

  //emailTextEditingController
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  late Logincintroller logincintroller;

  @override
  Widget build(BuildContext context) {
    logincintroller = Provider.of(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Consumer<Logincintroller>(
              builder: (context, loginProvider, child) {
                return InputWidget2(
                  obscureText: false,
                  TEController: emailTextEditingController,
                  prefixIcon: Icon(Icons.email),
                  label: "Email",
                  hintText: "demo@demo.com",
                  errorText:
                  loginProvider.showErrorEmail ? "Inter Valid Email" : null,
                );
              },
            ),
            SizedBox(height: 40),
            Consumer<Logincintroller>(
              builder: (context, loginProvider, child) {
                return InputWidget2(
                  obscureText: loginProvider.obscureTextPassword,
                  TEController: passwordTextEditingController,
                  prefixIcon: Icon(Icons.password),
                  label: "Password",
                  hintText: "Inter Password",
                  errorText: loginProvider.showErrorPassword
                      ? "Inter Your Password"
                      : null,
                  suffixIcon: IconButton(
                    onPressed: () {
                      logincintroller.changeObscureTextPassword();
                    },
                    icon: Icon(
                      logincintroller.obscureTextPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                logincintroller.checkEmail(
                  email: emailTextEditingController.text,
                );
                logincintroller.checkPassword(
                  password: passwordTextEditingController.text,
                );
              },
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }






}
