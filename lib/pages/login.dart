import 'package:flutter/material.dart';
import 'package:task/pages/signup.dart';
import 'package:task/bottomaNavBar.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  String email;
  String password;

  void validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      print('valid E-mail: $email, password: $password');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BottomNavBar()));
    } else
      print('not valid $email, password: $password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pink[200],
        title: Text('تسجيل الدخول'),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Directionality(
            textDirection: TextDirection.rtl,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      height: 180,
                      width: 380,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    TextFormField(
                      validator: (value) => value.isEmpty
                          ? 'من فضلك ادخل البريد الإلكتروني'
                          : null,
                      onSaved: (value) => email = value,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          labelText: 'البريد الإلكتروني',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink[200]),
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      validator: (value) =>
                          value.isEmpty ? 'من فضلك ادخل كلمه المرور' : null,
                      onSaved: (value) => password = value,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.security),
                          labelText: 'كلمه المرور',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.pink[200]),
                            borderRadius: BorderRadius.circular(30.0),
                          )),
                      obscureText: true,
                    ),
                    SizedBox(height: 15.0),
                    RaisedButton(
                      onPressed: validateAndSave,
                      color: Colors.pink[200],
                      child: Text('تسجيل الدخول'),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Center(
                        child: Text(
                          'مستخدم جديد؟',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.pink[200],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
