import 'package:flutter/material.dart';
import 'package:login_page/controller/login_controller.dart';
import 'package:login_page/view/widgets/input_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  late LoginController loginController;

  @override
  void initState() {
    super.initState();
    loginController = Provider.of<LoginController>(context, listen: false);
    loginController.loadCredentials().then((_) {
      setState(() {
        if (loginController.rememberMe) {
          emailTextEditingController.text = loginController.email ?? '';
          passwordTextEditingController.text = loginController.password ?? '';
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    loginController = Provider.of<LoginController>(context);

    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.login)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Consumer<LoginController>(
                builder: (context, LoginController, child) {
                  return InputWidget(
                    // AppLocalizations.of(context)!.email,
                    textEditingController: emailTextEditingController,
                    obscureText: false,
                    prefixIcon: Icon(Icons.email),
                    label: AppLocalizations.of(context)!.email,
                    hintText: "ibrahim@alkhaldy.com",
                    errorText: LoginController.showErrorEmail
                        ? AppLocalizations.of(context)!.invalidEmail
                        : null,
                  );
                },
              ),
              SizedBox(height: 16),
              Consumer<LoginController>(
                builder: (context, LoginController, child) {
                  return InputWidget(
                    // AppLocalizations.of(context)!.password,
                    textEditingController: passwordTextEditingController,
                    obscureText: LoginController.obscureTextPassword,
                    prefixIcon: Icon(Icons.lock),
                    label: AppLocalizations.of(context)!.password,
                    hintText: AppLocalizations.of(context)!.enterPassword,
                    errorText: LoginController.showErrorPassword
                        ? AppLocalizations.of(context)!.enterValidPassword
                        : null,
                    suffixIcon: IconButton(
                      onPressed: LoginController.changeObscureTextPassword,
                      icon: Icon(
                        LoginController.obscureTextPassword
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
                    value: loginController.rememberMe,
                    onChanged: (value) {
                      loginController.toggleRememberMe(value ?? false);
                    },
                  ),
                  Text(AppLocalizations.of(context)!.rememberMe),
                ],
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () async {
                  await loginController.saveCredentials(
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
                      loginController.changeLang(langCode: "ar");
                    },
                    child: Text(AppLocalizations.of(context)!.arabic),
                  ),
                  TextButton(
                    onPressed: () {
                      loginController.changeLang(langCode: "en");
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