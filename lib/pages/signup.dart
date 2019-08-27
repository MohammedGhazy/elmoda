import 'package:flutter/material.dart';
import 'package:task/pages/login.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  String email;
  String password;
  var phone;
  String name;

  void validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      print(
          'valid E-mail: $email, password: $password,$name, password: $phone');
    } else
      print('not valid $email, password: $password,$name, password: $phone');
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
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: ListView(
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
                      TextFormField(
                        validator: (value) =>
                            value.isEmpty ? 'من فضلك ادخل الإسم كامل' : null,
                        onSaved: (value) => name = value,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'الإسم كامل',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink[200]),
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        validator: (value) => value.isEmpty
                            ? 'من فضلك ادخل البريد الإلكتروني'
                            : null,
                        onSaved: (value) => email = value,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            labelText: 'البريد الإلكتروني',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink[200]),
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                      SizedBox(height: 15.0),
                      TextFormField(
                        validator: (value) =>
                            value.isEmpty ? 'من فضلك ادخل رقم الجوال' : null,
                        onSaved: (value) => phone = value.toString(),
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: 'رقم الجوال',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.pink[200]),
                              borderRadius: BorderRadius.circular(30.0),
                            )),
                      ),
                      SizedBox(height: 15.0),
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
                        child: Text('تسجيل جديد'),
                        color: Colors.pink[200],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Center(
                          child: Text(
                            'رجوع!؟',
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
      ),
    );
  }
}
