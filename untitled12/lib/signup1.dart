import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signup1 extends StatefulWidget {


  @override
  State<Signup1> createState() => _Signup1State();
}


class _Signup1State extends State<Signup1> {

  final _formKey = GlobalKey<FormState>(); // save
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();






  String? _validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'رقم الهاتف مطلوب';
    }
    if (value.length != 10 || !RegExp(r'^(077|078|079)\d{7}$').hasMatch(value)) {
      return 'يجب أن يكون رقم الهاتف 10 أرقام ويبدأ بـ 077 أو 078 أو 079';
    }
    return null;
  }
  String? _validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'البريد الإلكتروني مطلوب';
    }
    if (!RegExp(r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+').hasMatch(value)) {
      return 'الرجاء إدخال بريد إلكتروني صالح';
    }
    return null;
  }
  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'كلمة المرور مطلوبة';
    }
    if (value.length < 8) {
      return 'يجب أن تكون كلمة المرور 8 أحرف على الأقل';
    }
    if (!RegExp(r'(?=.*[A-Z])').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف كبير واحد على الأقل';
    }
    if (!RegExp(r'(?=.*[a-z])').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على حرف صغير واحد على الأقل';
    }
    if (!RegExp(r'(?=.*\d)').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على رقم واحد على الأقل';
    }
    if (!RegExp(r'(?=.*[@#\$%^&+=])').hasMatch(value)) {
      return 'يجب أن تحتوي كلمة المرور على رمز خاص واحد على الأقل';
    }
    return null;
  }
  String? _validateConfirmPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'الرجاء تأكيد كلمة المرور';
    }
    if (value != _passwordController.text) {
      return 'كلمات المرور غير متطابقة';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(child: Text("تسجيل الدخول",style: TextStyle(color: Colors.black),),)
      ),
      body: Padding(
        padding: const EdgeInsets.all(3),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'الاسم',labelStyle: TextStyle(color: Colors.indigoAccent),
                enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 40)),
                  //  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width:50 )),
               prefixIcon:Icon(Icons.person),iconColor: Colors.black
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'الاسم مطلوب';
                  }
                  return null;
                },

              ),
              TextFormField(

                controller: _phoneController,

                decoration: InputDecoration(labelText: 'رقم الهاتف',hintText: '07',labelStyle: TextStyle(color: Colors.indigoAccent),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 40)),


                ),
                keyboardType: TextInputType.phone,
                validator: _validatePhoneNumber,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'البريد الإلكتروني', labelStyle: TextStyle(color: Colors.indigoAccent),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 40)),
                    prefixIcon:Icon(Icons.email),iconColor: Colors.black
                ),
                keyboardType: TextInputType.emailAddress,
                validator: _validateEmail,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(labelText: 'كلمة المرور',labelStyle: TextStyle(color: Colors.indigoAccent),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 40)),
                    prefixIcon:Icon(Icons.password),iconColor: Colors.black
                ),

                obscureText: true,
                validator: _validatePassword,
              ),
              TextFormField(
                controller: _confirmPasswordController,
                decoration: InputDecoration(labelText: 'تأكيد كلمة المرور',labelStyle: TextStyle(color: Colors.indigoAccent),
                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black,width: 40)),
                    prefixIcon:Icon(Icons.password),iconColor: Colors.black
                ),
                obscureText: true,
                validator: _validateConfirmPassword,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('تسجيل',style: TextStyle(color: Colors.black)),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('تم التسجيل بنجاح')),
                    );
                  }
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1(),));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

}
