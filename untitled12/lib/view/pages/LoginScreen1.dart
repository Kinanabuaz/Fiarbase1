import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:untitled12/controllerr/LoginController.dart';

import '../widget/input_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  late LoginController2 loginControll;

  @override
  void initState() {
    super.initState();
    loginControll = Provider.of<LoginController2>(context, listen: false);
    loginControll.loadCredentials().then((_) {
      setState(() {
        if (loginControll.rememberMe) {
          emailTextEditingController.text = loginControll.email ?? '';
          passwordTextEditingController.text = loginControll.password ?? '';
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    loginControll = Provider.of<LoginController2>(context);

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.login)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<LoginController2>(
                builder: (context, LoginController2, child) {
                  return InputWidget(
                    // AppLocalizations.of(context)!.email,
                    textEditingController: emailTextEditingController,
                    obscureText: false,
                    prefixIcon: Icon(Icons.email),
                    label: AppLocalizations.of(context)!.email,
                    hintText: "kenan@alnabulsi.com",
                    errorText: LoginController2.showErrorEmail
                        ? AppLocalizations.of(context)!.invalidEmail
                        : null,
                  );
                },
              ),
              SizedBox(height: 16),
              Consumer<LoginController2>(
                builder: (context, LoginController2, child) {
                  return InputWidget(
                    // AppLocalizations.of(context)!.password,
                    textEditingController: passwordTextEditingController,
                    obscureText: LoginController2.obscureTextPassword,
                    prefixIcon: Icon(Icons.lock),
                    label: AppLocalizations.of(context)!.password,
                    hintText: AppLocalizations.of(context)!.enterPassword,
                    errorText: LoginController2.showErrorPassword
                        ? AppLocalizations.of(context)!.enterValidPassword
                        : null,
                    suffixIcon: IconButton(
                      onPressed: LoginController2.changeObscureTextPassword,
                      icon: Icon(
                        LoginController2.obscureTextPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Checkbox(
                    value: loginControll.rememberMe,
                    onChanged: (value) {
                      loginControll.toggleRememberMe(value ?? false);
                    },
                  ),
                  Text(AppLocalizations.of(context)!.rememberMe),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  await loginControll.saveCredentials(
                    emailTextEditingController.text,
                    passwordTextEditingController.text,
                  );
                },
                child: Text(AppLocalizations.of(context)!.login),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      loginControll.changeLang(langCode: "ar");
                    },
                    child: Text(AppLocalizations.of(context)!.arabic),
                  ),
                  TextButton(
                    onPressed: () {
                      loginControll.changeLang(langCode: "en");
                    },
                    child: Text(AppLocalizations.of(context)!.english),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}