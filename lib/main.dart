import 'package:flutter/material.dart';
import 'package:task/pages/Splash.dart';
import 'package:provider/provider.dart';
import 'package:task/cart_bloc.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CartBloc>(
      builder: (context)=>CartBloc(),
      child: MaterialApp(
        title: 'الموضه',
        debugShowCheckedModeBanner: false,
        home: Splash(),
      ),
    );
  }
}
